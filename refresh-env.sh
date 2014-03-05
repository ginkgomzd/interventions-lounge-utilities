#!/bin/bash

# use this one locally

# use this script to quickly restore a dump of a site to set up a dev or staging instance

##########
# CONFIG #
##########
PROJ_NAME=atd # needs to match project name in the server script
PROJ_ROOT=/var/www/atd.ginkgostreet.com # full path with no trailing slash, please
WEB_DIR=htdocs # relative from PROJ_ROOT with no trailing slash, please
WEB_GROUP=www-data
WEB_USER=www-data

CMS=DRUPAL # please specify DRUPAL or WP
CMS_DB=achievingthedream_org
#CRM_DB=${PROJ_NAME}_civicrm

REMOTE_HOST=${PROJ_NAME} # as configured in your ~/.ssh/config file
REMOTE_PROJ_ROOT='~' # full path with no trailing slash, please NOT WEB-ROOT
REMOTE_SCRIPT='~/remote-dump.sh' # full path

REWRITE_UNTAR='s/var\/www\/achievingthedream\.org\///g' # regex passed to tar --xform

#CUSTOM='sudo ln -s /var/www/atd.ginkgostreet.com/htdocs/sites/default /var/www/achievingthedream.org'
CUSTOM="drush -y -l ${PROJ_ROOT}/${WEB_DIR}/sites/defualt dis salesforce aes"
###########
# /CONFIG #
###########

if [ `whoami` == "root" ]; then
    echo >&2 "Don't run as root. I need access to your environment for SSH config, etc. Aborting."
    exit 1
fi

local_refresh=false
incremental=false
database_refresh=true
files_refresh=true

help_msg() {

	cat <<EOM
Environment Refresh Script
Complete configuration in script before running. Do not run as root.

OPTIONS:
    -l local: refresh from already downloaded dumps/tars
    -f files only
    -d database only

    -i incremental refresh via rsync #NOT SUPPORTED YET

    --deploy-remote - Upload remote script to production #NOT SUPPORTED YET

EOM

}
while getopts "li" opt; do
  case $opt in
    l) local_refresh=true;              ;;
    i) incremental=true;
       database_refresh=false;		;;
    d) files_refresh=false;		;;
    f) database_refresh=false;
#    p) dump_path="$OPTARG";		;;
    ?) help_msg;			;;
  esac
done

cd ${PROJ_ROOT}

if [[ ${local_refresh} == false ]]; then
  echo 'Building dump and tar on remote machine...'
  ssh ${REMOTE_HOST} "${REMOTE_SCRIPT}"

  echo 'Retrieving dump from remote machine...'

  if [[ ${files_refresh} == true ]]; then
    scp ${REMOTE_HOST}:${REMOTE_PROJ_ROOT}/${PROJ_NAME}.tar.gz .
  fi
  if [[ ${database_refresh} == true ]]; then
    scp ${REMOTE_HOST}:${REMOTE_PROJ_ROOT}/sql.cms .
    scp ${REMOTE_HOST}:${REMOTE_PROJ_ROOT}/sql.crm .
  fi

fi

if [[ ${files_refresh} == true ]]; then
  echo 'Dropping files...'
  sudo rm -rf ${WEB_DIR}

  echo 'Unzipping files...'
  sudo tar -xvzf ${PROJ_NAME}.tar.gz --xform ${REWRITE_UNTAR}
fi

if [[ ${database_refresh} == true ]]; then
  echo 'Dropping and creating databases...'
  echo "DROP DATABASE ${CMS_DB}; CREATE DATABASE ${CMS_DB};" | mysql
  if [[ -z ${CRM_DB} ]]; then
    echo "DROP DATABASE ${CRM_DB}; CREATE DATABASE ${CRM_DB};" | mysql
  fi

  echo 'Importing databases...'
  mysql ${CMS_DB} < sql.cms

  if [[ -z ${CRM_DB} ]]; then 
    mysql ${CRM_DB} < sql.crm
  fi
fi

if [ ${CMS} == 'DRUPAL' ]; then
    echo "Clearing caches..."
    sudo rm -rf ${PROJ_ROOT}/${WEB_DIR}/sites/default/files/civicrm/templates_c/*
    cd ${WEB_DIR}
    drush cc all
fi

if [ ${CMS} == 'DRUPAL' ]; then
    echo "Adjusting file ownership and permissions..."
    sudo chmod a-w ${PROJ_ROOT}/${WEB_DIR}/sites/default/civicrm.settings.php
    sudo chown -R "${WEB_USER}":"${WEB_GROUP}" ${PROJ_ROOT}/${WEB_DIR}/sites/default/files/civicrm
    sudo chmod -R o-w ${PROJ_ROOT}/${WEB_DIR}/sites/default/files/civicrm/
fi

`${CUSTOM}`
