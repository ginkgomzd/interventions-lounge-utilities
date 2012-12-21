<?php

/*
 * Config file for import_content_to_sql.php
 */

require_once __DIR__ . '/db.php';
define('DB_TABL', 'interventions');

define('DELIM', ',');
define('ENCLOSURE', '"');
define('FILE_CONTAINS_HEADINGS', TRUE);

define('TABLE_CREATE_STATEMENT',
    "CREATE TABLE IF NOT EXISTS `interventions` (
      `institution_id` varchar(19) DEFAULT NULL,
      `reporting_year` varchar(14) DEFAULT NULL,
      `institution_name` varchar(69) DEFAULT NULL,
      `intervention_name` varchar(174) DEFAULT NULL,
      `intervention_status` varchar(12) DEFAULT NULL,
      `intervention_id` varchar(15) NOT NULL DEFAULT '',
      `intervention_type` varchar(32) DEFAULT NULL,
      `content_area` varchar(20) DEFAULT NULL,
      `target_population` varchar(35) DEFAULT NULL,
      `gender` varchar(17) DEFAULT NULL,
      `ethnicity` varchar(22) DEFAULT NULL,
      `race` varchar(35) DEFAULT NULL,
      `start_date` varchar(37) DEFAULT NULL,
      `description` varchar(6971) DEFAULT NULL,
      `promising` varchar(319) DEFAULT NULL,
      `promising_desc` varchar(1274) DEFAULT NULL,
      `proportion_served` varchar(60) DEFAULT NULL,
      `outcome_indicators` varchar(408) DEFAULT NULL,
      PRIMARY KEY (`intervention_id`),
      KEY `institution_id` (`institution_id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;"
);

$fields = array(
      'institution_id',
      'reporting_year',
      'institution_name',
      'intervention_name',
      'intervention_status',
      'intervention_id',
      'intervention_type',
      'content_area',
      'target_population',
      'gender',
      'ethnicity',
      'race',
      'start_date',
      'description',
      'promising',
      'promising_desc',
      'proportion_served',
      'outcome_indicators'
);
?>