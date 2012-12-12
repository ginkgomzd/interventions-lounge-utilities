<?php

/*
 * Config file for import_content_to_sql.php
 */

define('DB_HOST', 'localhost');
define('DB_NAME', 'atd_import');
define('DB_PASS', '');
define('DB_TABL', 'institutions');
define('DB_USER', '');

define('DELIM', ',');
define('ENCLOSURE', '"');
define('FILE_CONTAINS_HEADINGS', TRUE);

define('TABLE_CREATE_STATEMENT',
    "CREATE TABLE IF NOT EXISTS `institutions` (
      `institution_id` varchar(18) NOT NULL DEFAULT '' COMMENT 'Member College ID from Salesforce',
      `institution_name` varchar(69) DEFAULT NULL,
      `year_joined` varchar(10) DEFAULT NULL COMMENT 'Year Achieving the Dream participation began',
      `fname` varchar(10) DEFAULT NULL COMMENT 'Team Leader First Name',
      `lname` varchar(13) DEFAULT NULL COMMENT 'Team Leader Last Name',
      `title` varchar(74) DEFAULT NULL COMMENT 'Team Leader Title',
      `email` varchar(33) DEFAULT NULL COMMENT 'Team Leader Email Address',
      `phone` varchar(26) DEFAULT NULL COMMENT 'Team Leader Phone Number',
      `state` varchar(20) DEFAULT NULL,
      `opted_out` varchar(2) DEFAULT NULL COMMENT 'Opted out of publishing interventions',
      `interventions` varchar(18) DEFAULT NULL,
      `add_intervention_link` varchar(93) DEFAULT NULL,
      PRIMARY KEY (`institution_id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;"
);

$fields = array(
      'institution_id',
      'institution_name',
      'year_joined',
      'fname',
      'lname',
      'title',
      'email',
      'phone',
      'state',
      'opted_out',
      'interventions',
      'add_intervention_link',
);
?>