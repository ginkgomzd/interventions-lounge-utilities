<?php

/*
 * Config file for import_content_to_sql.php
 *
 * Note: There are special instructions for generating the import file. Since
 * many of the fields contains formulas (e.g., =HYPERLINK("http://foo", "Label")),
 * simply exporting from GoogleDocs will result in loss of data. The spreadsheet
 * must be downloaded in ODS format. Then, follow the instructions at
 * http://forum.openoffice.org/en/forum/viewtopic.php?f=9&t=37538#p220756 to
 * Display Formulas and export the formulas (rather than their results) in the
 * CSV.
 */

require_once __DIR__ . '/db.php';
define('DB_TABL', 'core_team_leaders');

define('DELIM', '|');
define('ENCLOSURE', '~');
define('FILE_CONTAINS_HEADINGS', TRUE);

define('TABLE_CREATE_STATEMENT',
    "CREATE TABLE IF NOT EXISTS `core_team_leaders` (
      `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
      `institution_id` varchar(18) DEFAULT NULL,
      `user_id` varchar(18) DEFAULT NULL,
      `fname` varchar(50) DEFAULT NULL,
      `lname` varchar(50) DEFAULT NULL,
      `email` varchar(50) DEFAULT NULL,
      `phone` varchar(10) DEFAULT NULL,
      `phone_ext` varchar(10) DEFAULT NULL,
      `fax` varchar(10) DEFAULT NULL,
      `fax_ext` varchar(10) DEFAULT NULL,
      `roles` varchar(200) DEFAULT NULL,
      `title` varchar(200) DEFAULT NULL,
      `street` varchar(200) DEFAULT NULL,
      `city` varchar(75) DEFAULT NULL,
      `state` varchar(2) DEFAULT NULL,
      `postalcode` varchar(25) DEFAULT NULL,
      `raw_organization` varchar(300) DEFAULT NULL,
      `raw_fname` varchar(300) DEFAULT NULL,
      `raw_lname` varchar(300) DEFAULT NULL,
      `raw_email` varchar(300) NOT NULL DEFAULT '',
      `raw_phone` varchar(30) DEFAULT NULL,
      `raw_fax` varchar(30) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;"
);

$fields = array(
      'raw_organization',
      'raw_fname',
      'raw_lname',
      'roles',
      'title',
      'raw_email',
      'raw_phone',
      'street',
      'city',
      'state',
      'postalcode',
      'raw_fax',
);
?>