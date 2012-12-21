#!/bin/bash

# This is the master import script. All of our other scripts have discrete
# purposes. This a meta script; it just calls our other scripts in the right
# order.

# path to import scripts
MY_PATH="`dirname \"$0\"`"

# get our source data out of CSVs and into SQL
# ${MY_PATH}/import_content_to_sql.php



# update salesforce suite and install features
drush -y up salesforce

drush pml 2> /dev/null | grep features &> /dev/null
if [ $? != 0 ]
then
    drush dl features &> /dev/null
fi
drush -y en features