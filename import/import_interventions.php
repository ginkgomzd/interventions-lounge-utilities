#!/usr/bin/php -q
<?php
/*
 * For institutions, the Drupal db is in pretty good shape; all we'll do is
 * add the Saleforce ID to each record.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';
$db_name_drupal = 'achievingthedream_org';
$db_name_import = 'atd_import';
$field_name_external_id = 'field_external_id'; // should include the "field_" prefix

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, $db_name_drupal) OR error_out($DBCONN->connect_errno);

$sql = "
SELECT i.`intervention_name`, i.`reporting_year`, i.`institution_id`, g.`intervention_type`,
    g.`content_area`, g.`target_population`, i.`gender`, i.`ethnicity`, g.`race`, i.`start_date`,
    i.`description`, i.`promising`, i.`promising_desc`, i.`proportion_served`,
    i.`outcome_indicators` out_i, g.`outcome_indicators` out_g,
    i.`intervention_id`, i.`intervention_status`, c.`email`
FROM {$db_name_import}.`interventions` i
LEFT JOIN {$db_name_import}.`gdoc` g
ON i.`intervention_id` = g.`intervention_id`
LEFT JOIN {$db_name_import}.`core_team_leaders` c
ON c.`institution_id` = i.`institution_id`
";

if (!($result = $DBCONN->query($sql))) {
    error_out($DBCONN->error);
} else {
    // Drupal requires vid, and we don't have this yet, so disable key for now
    $sql = "ALTER TABLE `node` DROP KEY `vid`";
    if (!$DBCONN->query($sql)) {
        error_out('Node key drop failed: ' . $DBCONN->error);
    }

    while ($row = $result->fetch_assoc()) {
        $user_id = get_user_id($row['email']);
        $now = time();

        if (!$row['intervention_name']) {
            $row['intervention_name'] = "Intervention {$row['intervention_id']}";
        }

        // insert base node
        $sql = "
            INSERT INTO {$db_name_drupal}.`node`
            SET `type` = 'intervention',
                `title` = {$row['intervention_name']},
                `language` = 'und',
                `uid` = {$user_id},
                `created` = {$now}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error);
        }
        $node_id = $DBCONN->insert_id;

        // insert node revision
        $sql = "
            INSERT INTO {$db_name_drupal}.`node_revision`
            SET `nid` = {$node_id},
            `title` = {$row['intervention_name']},
            `log` = 'Grand Junction Design Content Migration',
            `uid` = {$user_id},
            `timestamp` = {$now}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error);
        }
        $revision_id = $DBCONN->insert_id;

        // update node with revision ID
        $sql = "
            UPDATE {$db_name_drupal}.`node`
            SET `vid` = {$revision_id},
            WHERE `nid` = {$node_id}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error);
        }

        $insert = array(
            'entity_type' => 'node',
            'bundle' => 'intervention',
            'entity_id' => $node_id,
            'revision_id' => $revision_id,
            'body_value' => $row['description'],
            'body_format' => 'filtered_html',
        );
        insert_drupal_cck_field('body', $insert);

        unset($insert['body_value'], $insert['body_format']);
        $insert['field_reporting_year_value'] = $row['reporting_year'];
        insert_drupal_cck_field('reporting_year', $insert);
    }

    // restore dropped node key
    $sql = "ALTER TABLE `node` ADD UNIQUE KEY `vid` (`vid`)";
    if (!$DBCONN->query($sql)) {
        error_out('Node key addition failed: ' . $DBCONN->error);
    }


}



/*
 * stub
 */
function get_user_id($email) {
    return '1';
}

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
?>