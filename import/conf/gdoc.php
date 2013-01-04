<?php

/*
 * Config file for import_content_to_sql.php
 */

require_once __DIR__ . '/db.php';
define('DB_TABL', 'gdoc');

define('DELIM', ',');
define('ENCLOSURE', '"');
define('FILE_CONTAINS_HEADINGS', TRUE);

define('TABLE_CREATE_STATEMENT',
    "CREATE TABLE IF NOT EXISTS `gdoc` (
      `institution_name` varchar(46) DEFAULT NULL,
      `intervention_id` varchar(3) NOT NULL DEFAULT '',
      `intervention_type` varchar(441) DEFAULT NULL,
      `content_area` varchar(122) DEFAULT NULL,
      `target_population` varchar(444) DEFAULT NULL,
      `race` varchar(141) DEFAULT NULL,
      `outcome_indicators` varchar(379) DEFAULT NULL,
      `additional_interventions_needed` varchar(3) DEFAULT NULL,
      `comments` varchar(20) DEFAULT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;"
);

$fields = array(
      'institution_name',
      'intervention_id',
      'intervention_type',
      'content_area',
      'target_population',
      'race',
      'outcome_indicators',
      'additional_interventions_needed',
      'comments',
);
?>