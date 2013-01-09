#!/usr/bin/php -q
<?php
/*
 * Prepare source data for Drupal data store.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';
define('DB_TABL', 'interventions');

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME) OR error_out($DBCONN->connect_errno);

$q = array();

$q[] = "
UPDATE " . DB_TABL . "
SET `ethnicity` = NULL
WHERE `ethnicity` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `ethnicity` = 'All'
WHERE `ethnicity` = 'All Ethnicities'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `ethnicity` = 'Latino'
WHERE `ethnicity` = 'Hispanic or Latino'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `ethnicity` = 'NonLatino'
WHERE `ethnicity` = 'Not Hispanic or Latino'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `gender` = NULL
WHERE `gender` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `gender` = 'Males'
WHERE `gender` = 'Males only'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `gender` = 'Females'
WHERE `gender` = 'Females only'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `gender` = 'n/a'
WHERE `gender` = 'Males and Females'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `intervention_status` = NULL
WHERE `intervention_status` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `promising` = NULL
WHERE `promising` IN ('', 'Need more info')
";

$q[] = "
UPDATE " . DB_TABL . "
SET `proportion_served` = 'NA'
WHERE `proportion_served` IN ('', 'Not Available')
";


$q[] = "
UPDATE " . DB_TABL . "
SET `reporting_year` = NULL
WHERE `reporting_year` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `reporting_year` = CONCAT(LEFT(`reporting_year`,4), '-01-01 00:00:00')
";

$q[] = "
UPDATE " . DB_TABL . "
SET `start_date` = NULL
WHERE `start_date` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `start_date` = CONCAT(LEFT(`start_date`,4), '-01-01 00:00:00')
";

foreach ($q as $sql) {
    $result = $DBCONN->query($sql);
    if (!$result) {
        error_out($DBCONN->error);
    }
}

mysqli_close($DBCONN);
die(0);
?>