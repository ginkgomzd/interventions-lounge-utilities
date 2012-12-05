#!/bin/bash
# This script purges all nodes of type Intervention from the database.
# It requires as an argument the path to Drupal root.

if [ $# -lt 1 ]
then
    echo "Missing parameter. Please supply the path to Drupal root." 1>&2
    exit 1
fi

ORIG_PATH=`pwd`
SITE_PATH=$1

cd $SITE_PATH

# if devel_generate has not been downloaded, get it
drush pml 2> /dev/null | grep devel_generate &> /dev/null
if [ $? != 0 ]
then
    drush dl devel &> /dev/null
fi

# enable it
drush -y en devel_generate &> /dev/null

# delete all interventions data and report the number of deleted nodes
drush genc 0 --kill --types="intervention" 2>&1 | grep --color=never Deleted

cd $ORIG_PATH
exit
