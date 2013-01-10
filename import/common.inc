<?php
/**
 * This file contains operations and functions common to our import scripts.
 */

if ($argc < 2) {
    error_out('Config file not specified');
}
$config = $argv[1];
if (!is_readable($config)) {
    error_out('Config file is not readable or does not exist');
}

require_once($config);

/**
 * This function is used to kill a script, with CLI-appropriate die codes and
 * messages.
 *
 * @param type $msg This message gets printed to STDERR
 * @return void
 */
function error_out($msg) {
    global $argv;
    $msg = $argv[0] . ': ' . $msg;
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}

/**
 * This function is used to insert content into CCK fields.
 *
 * @global object $DBCONN Global database connection
 * @param string $field_name The name of the CCK field, sans field_ prefix.
 * @param array $pairs Keyed by database field names, values to be inserted.
 * @return void
 */
function insert_drupal_cck_field($field_name, array $pairs) {
    global $DBCONN, $db_name_drupal;

    if ($field_name !== 'body') {
        $field_name = 'field_' . $field_name;
    }

    $set_clause = array();
    foreach ($pairs as $k => $v) {
        $set_clause[] = "`{$k}` = '" . $DBCONN->real_escape_string($v) . "'";
    }

    foreach (array('data', 'revision') as $type) {
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`field_{$type}_{$field_name}`
            SET `language` = 'und'," .
                implode(', ', $set_clause);

        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }
    }
}

/*
 * stub
 */
function get_user_id($email) {
    return '1';
}
?>
