#!/usr/bin/php -q
<?php
/**
 * This file is used to import raw CSV files into MySQL
 *
 * @param string Name of file to import, or STDIN if not specified
 * @return boolean 0 on success, 1 on failure
 */

require_once(__DIR__ . '/import.config.php');

if ($argc < 2) {
    $argv[1] = "php://stdin";
}
$filename = $argv[1];
if (!is_readable($filename)) {
    error_out('Import source is not readable or does not exist');
}

$DBCONN = mysqli_connect(DB_HOST, DB_USER, DB_PASS) OR error_out(mysql_error());
mysqli_select_db($DBCONN, DB_NAME);
mysqli_query($DBCONN, 'DROP TABLE IF EXISTS `' . DB_TABL . '`');
mysqli_query($DBCONN, TABLE_CREATE_STATEMENT);

$fp = fopen($filename, "r");
if ($fp !== FALSE) {

    $i = 0;
    while ($line = fgetcsv($fp, 0, DELIM, ENCLOSURE)) {

        if (FILE_CONTAINS_HEADINGS && $i++ === 0) {
            continue;
        }

        // partly we do this to catch malformed lines in the CSV
        $record = @array_combine($fields, $line);
        if (!$record) {
            error_out('Line ' . ($i + 1) . ': wrong number of fields');
        }

        $sql = 'INSERT INTO `' . DB_TABL . '` SET ';

        $sql_fields = array();
        foreach ($record as $k => $v) {
            $sql_fields[] = '`' . mysqli_real_escape_string($DBCONN, $k) . "` = '" . mysqli_real_escape_string($DBCONN, trim($v)) . "'";
        }

        $sql .= implode(', ', $sql_fields);

        mysqli_query($DBCONN, $sql);
    }
}

mysqli_close($DBCONN);
die(0);

function error_out($msg) {
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}
?>