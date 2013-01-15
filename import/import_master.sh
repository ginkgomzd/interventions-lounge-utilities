#!/bin/bash

# @param If called with flag --sendmail, then the import will send welcome
# emails to newly registered users; otherwise no emails will be sent

# This is the master import script. All of our other scripts have discrete
# purposes. This a meta script; it just calls our other scripts in the right
# order.

# Determine whether or not this import should email newly created users about
# their accounts. Obviously we don't want to do this on staging imports.
MAIL_ENABLED="FALSE"
if [ "$1" == "--sendmail" ]
        then MAIL_ENABLED="TRUE"
fi

# paths
MY_PATH="`dirname \"$0\"`" # path to import scripts
SITE_PATH="${MY_PATH}/../../htdocs/sites/default"
CUR_PATH=`pwd`

# purge unwanted interventions data
${MY_PATH}/purge-interventions-data.sh ${SITE_PATH}

# get our source data out of CSVs and into SQL
${MY_PATH}/import_content_to_sql.php ${MY_PATH}/conf/institutions.php ${MY_PATH}/data/institutions.csv
${MY_PATH}/import_content_to_sql.php ${MY_PATH}/conf/interventions.php ${MY_PATH}/data/interventions.csv
${MY_PATH}/import_content_to_sql.php ${MY_PATH}/conf/gdoc.php ${MY_PATH}/data/gdoc.csv
${MY_PATH}/import_content_to_sql.php ${MY_PATH}/conf/core_team_leaders.php ${MY_PATH}/data/core_team_leaders.csv

# clean up data
${MY_PATH}/normalize_interventions.php ${MY_PATH}/conf/db.php
${MY_PATH}/normalize_gdoc.php ${MY_PATH}/conf/db.php
${MY_PATH}/normalize_gdoc_content.php ${MY_PATH}/conf/db.php
${MY_PATH}/normalize_core_team_leaders.php ${MY_PATH}/conf/db.php

# get into drush-friendly environment
cd ${SITE_PATH}

# for safety, put the site into maintenance mode before touching the DB
drush vset --exact -y maintenance_mode 1
drush cc all # apparently variables are cached; this should take care of that

# stupid marker error will break the update, so we disable
drush -y dis gmap_location gmap_taxonomy gmap

# update salesforce suite and install features
drush -y dl salesforce-7.x-2.0-alpha3
drush -y updb
drush pml 2> /dev/null | grep features &> /dev/null
if [ $? != 0 ]
then
    drush dl features &> /dev/null
fi
drush -y en features
# get features extra, let the interventions_lounge module 
# enable the sub-modules it needs
drush dl features_extra

# enable meta module
drush -y en interventions_lounge

# turn gmap_location back on
drush -y en gmap_location gmap_taxonomy gmap

# add admin user to ATD moderators role
drush -y user-add-role "ATD Staff Moderator" --uid=1

# return to current path
cd ${CUR_PATH}

# update Drupal's College content with imported Salesforce IDs
${MY_PATH}/import_update_institutions.php ${MY_PATH}/conf/db.php

# import interventions
${MY_PATH}/import_interventions.php ${MY_PATH}/conf/db.php $MAIL_ENABLED

# import interventions contacts
${MY_PATH}/import_intervention_contacts.php ${MY_PATH}/conf/db.php

# take Drupal out of maintenance mode
cd ${SITE_PATH}
drush vset --exact -y maintenance_mode 0
drush cc all
cd ${CUR_PATH}
