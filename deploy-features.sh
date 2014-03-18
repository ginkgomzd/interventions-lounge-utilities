#!/bin/sh

WEBROOT=/var/www/atd.localhost/htdocs

cd ${WEBROOT}
echo "Clearing caches..."
drush cc all

echo "Disabling masked_input module, which can't have been doing anything since it is missing the associated JS library..."
drush -y dis masked_input

# TODO: We are missing a step here whereby the Feature code is updated. Could be manual,
# could be a git pull, could be a copy of one sort or another.

echo "Updating Drupal with latest Interventions Feature..."
drush -y features-revert intervention

echo "Running database updates for latest version of Interventions module..."
drush -y updatedb
