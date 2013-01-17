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
SET `content_area` = NULL
WHERE `content_area` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `content_area` = 'Student Success'
WHERE `content_area` = 'Student success'
";

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
WHERE `gender` IN ('', 'n/a', 'Males and Females')
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
SET `intervention_status` = NULL
WHERE `intervention_status` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `intervention_type` = NULL
WHERE `intervention_type` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `intervention_type` = 'Gatekeeper Courses'
WHERE `intervention_type` = 'Gateway Courses'
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
SET `target_population` = NULL
WHERE `target_population` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'Academically Underprepared Students'
WHERE `target_population` = 'Academically underprepared students'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'All Students'
WHERE `target_population` = 'All students'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'Faculty and Staff'
WHERE `target_population` = 'Faculty and staff'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'Financial Aid Status'
WHERE `target_population` = 'Financial aid status'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'First-time Students'
WHERE `target_population` = 'First-time students'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'ESL-ESOL-ELL'
WHERE `target_population` = 'ESL/ESOL/ELL'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `target_population` = 'Enrollment: Full Time Students'
WHERE `target_population` = 'Enrollment: Full Time students'
";

$q[] = "
UPDATE " . DB_TABL . "
SET `race` = NULL
WHERE `race` = ''
";

$q[] = "
UPDATE " . DB_TABL . "
SET `race` = 'Black or African American non-Hispanic'
WHERE `race` = 'Black/African American non-Hispanic'
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