<?php

/*
 * Config file for import_content_to_sql.php
 */

require_once __DIR__ . '/db.php';
define('DB_TABL', 'lookup_state');

define('DELIM', ',');
define('ENCLOSURE', '"');
define('FILE_CONTAINS_HEADINGS', FALSE);

define('TABLE_CREATE_STATEMENT',
    "CREATE TABLE IF NOT EXISTS `lookup_state` (
      `state_name` varchar(32) NOT NULL,
      `state_abbr` varchar(8) NOT NULL,
      PRIMARY KEY (`state_abbr`),
      KEY `state_name` (`state_name`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;"
);

$fields = array(
      'state_name',
      'state_abbr',
);
?>