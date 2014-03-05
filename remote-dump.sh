#!/bin/bash

# use this one on the server

# use this script to quickly produce a dump of a site that can be used to set up a dev instance

##########
# CONFIG #
##########
PROJ_NAME=atd
PROJ_ROOT=$HOME # full path with no trailing slash, please
WEB_DIR=/var/www/achievingthedream.org/htdocs # relative from PROJ_ROOT with no trailing slash, please

CMS_DB=achievingthedream_org
#CRM_DB=${PROJ_NAME}_civicrm
###########
# /CONFIG #
###########


cd ${PROJ_ROOT}

echo "Deleting oldest dump..."
rm -f ${PROJ_NAME}.bak.tar.gz
rm -f sql.cms.bak.gz
rm -f sql.crm.bak.gz

echo "Backing up last dump..."
mv ${PROJ_NAME}.tar.gz ${PROJ_NAME}.bak.tar.gz
mv sql.cms sql.cms.bak
gzip sql.cms.bak
if [[ -z ${CRM_DB} ]]; then
  mv sql.crm sql.crm.bak
  gzip sql.crm.bak
fi

echo "Zipping files..."
tar -czf ${PROJ_NAME}.tar.gz ${WEB_DIR}/

echo "Dumping databases..."
mysqldump ${CMS_DB} > sql.cms
if [[ -z ${CRM_DB} ]]; then 
  mysqldump ${CRM_DB} > sql.crm
fi
