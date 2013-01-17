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
inst.`email`, inst.`phone`, inst.`phone_ext`
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
        $title = $DBCONN->real_escape_string(trim($row['fname'] . ' ' . $row['lname']));
        $now = time();

        // insert base node with placeholder uid
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`node`
            SET `type` = 'intervention_contact',
                `title` = '{$title}',
                `language` = 'und',
                `uid` = 1,
                `created` = {$now},
                `changed` = {$now}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }
        $node_id = $DBCONN->insert_id;

        // insert node revision with placeholder uid
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`node_revision`
            SET `nid` = {$node_id},
            `title` = '{$title}',
            `log` = 'Grand Junction Design Content Migration',
            `uid` = 1,
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

        // get data to link this Contact with its Intervention and to make the
        // the Contact node owned by the same user who owns the Intervention
        $sql = "
            SELECT
                intv.`nid`,
                intv.`vid`,
                intv.`uid`
            FROM `{$db_name_drupal}`.`node` intv
            INNER JOIN `{$db_name_drupal}`.`field_data_field_college_reference` colg
            ON intv.`nid` = colg.`entity_id`
            INNER JOIN `{$db_name_drupal}`.`node` inst
            ON inst.`nid` = colg.`field_college_reference_nid`
            INNER JOIN `{$db_name_drupal}`.`field_data_field_external_id` sf
            ON sf.`entity_id` = inst.`nid`
            WHERE sf.`field_external_id_value` = '{$row['institution_id']}'
        ";
        if (!($select = $DBCONN->query($sql))) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }

        while ($intv = $select->fetch_assoc()) {
            $uid = @$intv['uid']; // all the interventions should have the same owner, so this is safe enough
            if ($intv['nid'] && $intv['vid']) {
                // link Contact with Intervention
                $sql = "
                    INSERT INTO `{$db_name_drupal}`.`field_data_field_contact`
                    SET `entity_type` = 'node',
                        `bundle` = 'intervention',
                        `entity_id` = {$intv['nid']},
                        `revision_id` = {$intv['vid']},
                        `language` = 'und',
                        `delta` = 0,
                        `field_contact_nid` = {$node_id}
                ";
                if (!$DBCONN->query($sql)) {
                    error_out($DBCONN->error . ". Query: " . $sql);
                }
            }
        }

        // replace our placeholder UIDs
        if ($uid) {
            // assign the proper owner to the Contact node
            $sql = "
                UPDATE `{$db_name_drupal}`.`node`
                SET `uid` = {$uid}
                WHERE `nid` = {$node_id}
            ";
            if (!$DBCONN->query($sql)) {
                error_out($DBCONN->error . ". Query: " . $sql);
            }

            // assign the proper owner to the node revision
            $sql = "
                UPDATE `{$db_name_drupal}`.`node_revision`
                SET `uid` = {$uid}
                WHERE `vid` = {$revision_id}
            ";
            if (!$DBCONN->query($sql)) {
                error_out($DBCONN->error . ". Query: " . $sql);
            }
        }

        // now we get to the business of inserting data into CCK fields
        $insert = array(
            'delta' => 0,
            'entity_type' => 'node',
            'bundle' => 'intervention_contact',
            'entity_id' => $node_id,
            'revision_id' => $revision_id,
        );

        if ($row['title']) {
            $insert['field_job_title_value'] = $row['title'];
            $insert['field_job_title_format'] = NULL;
            insert_drupal_cck_field('job_title', $insert);
            unset($insert['field_job_title_value']);
            unset($insert['field_job_title_format']);
        }

        if ($row['email']) {
            $insert['field_email_email'] = $row['email'];
            insert_drupal_cck_field('email', $insert);
            unset($insert['field_email_email']);
        }

        if ($row['phone']) {
            $insert['field_contact_phone_number'] = $row['phone'];
            $insert['field_contact_phone_country_codes'] = 'us';
            $insert['field_contact_phone_extension'] = $row['phone_ext'];
            insert_drupal_cck_field('contact_phone', $insert);
            unset($insert['field_contact_phone_number']);
            unset($insert['field_contact_phone_country_codes']);
            unset($insert['field_contact_phone_extension']);
        }
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