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