#!/usr/bin/php -q
<?php
/*
 * The source data contains some rows which contain no Intervention IDs. These
 * rows are useless to us. We'll delete them here and add a primary key to our
 * table.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';
define('DB_TABL', 'gdoc');

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME) OR error_out($DBCONN->connect_errno);

$q = array();

$q[] = "
DELETE FROM " . DB_TABL . "
WHERE `intervention_id` = ''
";

// this accounts for a weird QuickBase quirk described in
// https://trello.com/card/intervention-legacy-id/50a659fee4c158022c0085c3/63
$q[] = "
UPDATE `" . DB_TABL . "`
SET `intervention_id` = `intervention_id`+100
";

$q[] = "
ALTER TABLE " . DB_TABL . "
ADD PRIMARY KEY(`intervention_id`)
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