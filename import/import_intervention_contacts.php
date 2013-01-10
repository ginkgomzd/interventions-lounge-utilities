#!/usr/bin/php -q
<?php
/*
 * Import intervention contacts and assign them to the appropriate interventions.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, $db_name_drupal) OR error_out($DBCONN->connect_errno);

$sql = "
SELECT inst.`institution_id`, inst.`fname`, inst.`lname`, inst.`title`,
inst.`email`, inst.`phone`
FROM {$db_name_import}.`institutions` inst
";

if (!($result = $DBCONN->query($sql))) {
    error_out($DBCONN->error);
} else {
    // Drupal requires vid, and we don't have this yet, so disable key for now
    $sql = "ALTER TABLE `{$db_name_drupal}`.`node` DROP KEY `vid`";
    if (!$DBCONN->query($sql)) {
        error_out('Node key drop failed: ' . $DBCONN->error);
    }

    while ($row = $result->fetch_assoc()) {
        $user_id = get_user_id('');
        $now = time();

        // insert base node
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`node`
            SET `type` = 'intervention_contact',
                `title` = '{$row['title']}',
                `language` = 'und',
                `uid` = {$user_id},
                `created` = {$now},
                `changed` = {$now}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }
        $node_id = $DBCONN->insert_id;

        // insert node revision
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`node_revision`
            SET `nid` = {$node_id},
            `title` = '{$row['title']}',
            `log` = 'Grand Junction Design Content Migration',
            `uid` = {$user_id},
            `timestamp` = {$now}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }
        $revision_id = $DBCONN->insert_id;

        // update node with revision ID
        $sql = "
            UPDATE `{$db_name_drupal}`.`node`
            SET `vid` = {$revision_id}
            WHERE `nid` = {$node_id}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }

        // update link this Contact with its Intervention
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`field_data_field_contact` (
                `entity_type`,
                `bundle`,
                `entity_id`,
                `revision_id`,
                `language`,
                `delta`,
                `field_contact_nid`
            )
            SELECT
                'node',
                'intervention',
                intv.`nid`,
                intv.`vid`,
                'und',
                0,
                {$node_id}
            FROM `{$db_name_drupal}`.`node` intv
            INNER JOIN `{$db_name_drupal}`.`field_data_field_college_reference` colg
            ON intv.`nid` = colg.`entity_id`
            INNER JOIN `{$db_name_drupal}`.`node` inst
            ON inst.`nid` = colg.`field_college_reference_nid`
            INNER JOIN `{$db_name_drupal}`.`field_data_field_external_id` sf
            ON sf.`entity_id` = inst.`nid`
            WHERE sf.`field_external_id_value` = '{$row['institution_id']}'
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }

        // now we get to the business of inserting data into CCK fields
        $insert = array(
            'delta' => 0,
            'entity_type' => 'node',
            'bundle' => 'intervention_contact',
            'entity_id' => $node_id,
            'revision_id' => $revision_id,
        );


        $insert['field_first_name_value'] = $row['fname'];
        $insert['field_first_name_format'] = NULL;
        insert_drupal_cck_field('first_name', $insert);
        unset($insert['field_first_name_value']);
        unset($insert['field_first_name_format']);

        $insert['field_last_name_value'] = $row['lname'];
        $insert['field_last_name_format'] = NULL;
        insert_drupal_cck_field('last_name', $insert);
        unset($insert['field_last_name_value']);
        unset($insert['field_last_name_format']);

        $insert['field_email_email'] = $row['email'];
        insert_drupal_cck_field('email', $insert);
        unset($insert['field_email_email']);

        // TODO: import phone #s

    }

    // restore dropped node key
    $sql = "ALTER TABLE `node` ADD UNIQUE KEY `vid` (`vid`)";
    if (!$DBCONN->query($sql)) {
        error_out('Node key addition failed: ' . $DBCONN->error);
    }
}

mysqli_close($DBCONN);
die(0);
?>