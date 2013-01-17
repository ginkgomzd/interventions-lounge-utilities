#!/usr/bin/php -q
<?php
/*
 * Attempt to clean up mess on production by uninstalling a few modules via the
 * database.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, $db_name_drupal) OR error_out($DBCONN->connect_errno);

$select = "
DELETE FROM `system`
WHERE `name` IN ('intervention', 'interventions_lounge', 'college_profile')
";

$result = $DBCONN->query($select);
if (!$result) {
    error_out($DBCONN->error);
}

mysqli_close($DBCONN);
die(0);
?>
