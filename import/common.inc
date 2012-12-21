<?php
/**
 * This file contains operations and functions common to our import scripts.
 */

if ($argc < 2) {
    error_out('Config file not specified. Usage: get_all_multiselect_values.php config_file');
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
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}

?>
