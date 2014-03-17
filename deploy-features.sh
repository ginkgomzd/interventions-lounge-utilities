#!/bin/sh

WEBROOT=/var/www/atd.localhost/htdocs

cd ${WEBROOT}
echo "Clearing caches..."
drush cc all

echo "Disabling masked_input module, which can't have been doing anything since it is missing the associated JS library..."
drush -y dis masked_input
