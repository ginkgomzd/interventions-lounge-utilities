#!/usr/bin/php -q
<?php
/**
 * This file is used to import raw CSV files into MySQL
 *
 * @param string Name of file to import, or STDIN if not specified
 * @return TODO
 */

require_once(__DIR__ . '/import.config.php') or error_out('Config file not found.');

if ($argvc < 2) {
    $argv[1] = "php://stdin";
}
$filename = $argv[1];
if (!is_readable($filename)) {
    error_out('Import source is not readable or does not exist');
}

$DBCONN = mysqli_connect(DB_HOST, DB_USER, DB_PASS) OR error_out(mysql_error());
mysqli_select_db($DBCONN, DB_NAME);

$lines = file($filename, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
if (FILE_CONTAINS_HEADINGS) {
    array_shift($lines);
}

mysqli_query($DBCONN, TABLE_DROP_STATEMENT);
mysqli_query($DBCONN, TABLE_DROP_STATEMENT);

foreach ($lines as $i => $l) {
    // partly we do this to catch malformed lines in the CSV
    $record = array_combine($fields, explode(DELIM, $l));
    if (!$record) {
        error_out('Line ' . $i + 1 . ': wrong number of fields');
    }

    $sql = 'INSERT INTO `' . DB_TABLE . '` SET ';

    $sql_fields = array();
    foreach ($record as $k => $v) {
        $sql_fields[] = '`' . mysqli_real_escape_string($DBCONN, $k) . "` = '" . mysqli_real_escape_string($DBCONN, trim($v)) . "'";
    }

    $sql .= implode(', ', $sql_fields);

    mysqli_query($DBCONN, $sql);
}

mysqli_close($DBCONN);
die(0);

function error_out($msg) {
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}
?>