#!/usr/bin/php -q
<?php
/*
 * For institutions, the Drupal db is in pretty good shape; all we'll do is
 * add the Saleforce ID to each record.
 */

// connect to db
if ($argc < 2) {
    error_out('Config file not specified. Usage: get_all_multiselect_values.php config_file');
}
$config = $argv[1];
if (!is_readable($config)) {
    error_out('Config file is not readable or does not exist');
}

require_once($config);

$db_name_drupal = 'achievingthedream_org';
$db_name_import = 'atd_import';
$field_name_external_id = 'field_external_id'; // should include the "field_" prefix

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, $db_name_drupal) OR error_out($DBCONN->connect_errno);

$sql = array();

$sql[] = "
INSERT INTO `{$db_name_drupal}`.`field_data_{$field_name_external_id}` (`entity_type`, `bundle`, `entity_id`, `revision_id`, `language`, `delta`, `{$field_name_external_id}_value`, `{$field_name_external_id}_format` )
SELECT 'node', 'college_profile', node.`nid`, node.`vid`, 'und', 0, colleges.`institution_id`, NULL
FROM `{$db_name_drupal}`.`node` node INNER JOIN `{$db_name_import}`.`institutions` colleges
ON node.`title` = colleges.`institution_name`
";

$sql[] = "
INSERT INTO `{$db_name_drupal}`.`field_revision_{$field_name_external_id}` (`entity_type`, `bundle`, `entity_id`, `revision_id`, `language`, `delta`, `{$field_name_external_id}_value`, `{$field_name_external_id}_format` )
SELECT 'node', 'college_profile', node.`nid`, node.`vid`, 'und', 0, colleges.`institution_id`, NULL
FROM `{$db_name_drupal}`.`node` node INNER JOIN `{$db_name_import}`.`institutions` colleges
ON node.`title` = colleges.`institution_name`
";

foreach ($sql as $q) {
    if (!$DBCONN->query($q)) {
        error_out($DBCONN->error);
    }
}

mysqli_close($DBCONN);
die(0);

function error_out($msg) {
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}
?>