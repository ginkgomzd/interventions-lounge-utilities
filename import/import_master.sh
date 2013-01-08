#!/bin/bash

# This is the master import script. All of our other scripts have discrete
# purposes. This a meta script; it just calls our other scripts in the right
# order.

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

# clean up imported gdoc (multiselect) data
${MY_PATH}/normalize_gdoc.php ${MY_PATH}/conf/db.php

# clean up imported core_team_leaders data
${MY_PATH}/normalize_core_team_leaders.php ${MY_PATH}/conf/db.php

# get into drush-friendly environment
cd ${SITE_PATH}

# update salesforce suite and install features
drush -y up salesforce
drush pml 2> /dev/null | grep features &> /dev/null
if [ $? != 0 ]
then
    drush dl features &> /dev/null
fi
drush -y en features

# enable meta module
drush -y en interventions_lounge

# return to current path
cd ${CUR_PATH}

# update Drupal's College content with imported Salesforce IDs
${MY_PATH}/import_update_institutions.php ${MY_PATH}/conf/db.php

# import interventions


# TODO: write script which imports an Intervention and checks the corresponding
# institution_id in the core_team_leaders table. We use the data in core_team_leaders
# to find or create a Drupal user and the data in Institution table to create
# an Intervention Contact record. The IC is added as a node-reference to the
# Intervention record, and both records are owned by the found/created Drupal
# user. This is over-simplified; we'll have some fun joins to play with.