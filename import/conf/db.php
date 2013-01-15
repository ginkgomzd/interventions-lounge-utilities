<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'atd_import');
define('DB_PASS', '');
define('DB_USER', '');

// these should really be constants, but there isn't time to refactor the scripts expecting vars
$db_name_drupal = 'achievingthedream_org';
$db_name_import = DB_NAME;


// okay, technically this isn't a DB config, but since we're defining all our constants here...
define('DRUPAL_ROOT', '/var/www/atd.localhost/htdocs');
?>
