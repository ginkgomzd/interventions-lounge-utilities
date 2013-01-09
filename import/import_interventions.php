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
SELECT i.`intervention_name`, i.`reporting_year`, n.`nid` institution_nid, g.`intervention_type`,
    g.`content_area`, g.`target_population`, i.`gender`, i.`ethnicity`, g.`race`, i.`start_date`,
    i.`description`, i.`promising`, i.`promising_desc`, i.`proportion_served`,
    i.`outcome_indicators` out_i, g.`outcome_indicators` out_g,
    i.`intervention_id`, i.`intervention_status`, c.`email`
FROM `{$db_name_import}`.`interventions` i
LEFT JOIN `{$db_name_import}`.`gdoc` g
ON i.`intervention_id` = g.`intervention_id`
LEFT JOIN `{$db_name_import}`.`core_team_leaders` c
ON c.`institution_id` = i.`institution_id`
LEFT JOIN `{$db_name_drupal}`.`field_data_field_external_id` x
ON x.`field_external_id_value` = i.`institution_id`
LEFT JOIN `{$db_name_drupal}`.`node` n
ON n.`nid` = x.`entity_id`
";

if (!($result = $DBCONN->query($sql))) {
    error_out($DBCONN->error);
} else {
    // Drupal requires vid, and we don't have this yet, so disable key for now
    $sql = "ALTER TABLE `{$db_name_drupal}`.`node` DROP KEY `vid`";
//    if (!$DBCONN->query($sql)) {
//        error_out('Node key drop failed: ' . $DBCONN->error);
//    }

    // set up value mapping
    $map_intervention_type = array(
        'Admissions' => '0',
        'Advising' => '1',
        'Board of Trustees' => '2',
        'Budgeting Process' => '3',
        'Committee or Governance Structure' => '4',
        'Community Engagement' => '5',
        'Developmental Education' => '6',
        'Dual Credit Office' => '7',
        'Equity' => '8',
        'Faculty Professional Development' => '9',
        'First-Year Experience' => '10',
        'Gatekeeper Courses' => '11',
        'Improved Use of Data' => '12',
        'Information Systems' => '13',
        'Institutional Effectiveness' => '14',
        'Institutional Research' => '15',
        'Internal Policy Review & Update' => '16',
        'K-14 Strategies' => '17',
        'Learning Communities' => '18',
        'Mentoring' => '19',
        'Policy Change' => '20',
        'Program Evaluation Process' => '21',
        'Staff Engagement' => '22',
        'Student Engagement' => '23',
        'Student Success Course' => '24',
        'Student Support Services' => '25',
        'Supplemental Instruction' => '26',
        'Testing' => '27',
        'Tutoring' => '28',
        'Other' => '29',
    );

    $map_content_area = array(
        'Arts' => '0',
        'Business' => '1',
        'Communications' => '2',
        'Computer Science' => '3',
        'English' => '4',
        'Humanities' => '5',
        'Math' => '6',
        'Reading' => '7',
        'Science' => '8',
        'Student Success' => '9',
    );

    $map_target_pop = array(
        'All Students' => '0',
        'Academically Underprepared Students' => '1',
        'ESL-ESOL-ELL' => '2',
        'Enrollment: Full Time Students' => '3',
        'Enrollment: Part Time Students' => '4',
        'Faculty and Staff' => '5',
        'Financial Aid Status' => '6',
        'First Generation' => '7',
        'First-time Students' => '8',
        'High School Students' => '9',
        'Other' => '10',
    );

    $map_race = array(
        'All Races' => '0',
        'American Indian or Alaska Native' => '1',
        'Black or African American' => '2',
        'Black or African American non-Hispanic' => '3',
        'Other' => '4',
    );

    $map_status = array(
        'Active' => '0',
        'Planned' => '1',
        'Discontinued' => '2',
    );

    while ($row = $result->fetch_assoc()) {
        $user_id = get_user_id($row['email']);
        $now = time();
        $outcome_indicators = $row['out_i'] . "\n\n" . $row['out_g'];

        if (!$row['intervention_name']) {
            $row['intervention_name'] = "Intervention {$row['intervention_id']}";
        }

        // insert base node
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`node`
            SET `type` = 'intervention',
                `title` = '{$row['intervention_name']}',
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
            INSERT INTO `{$db_name_drupal}`.`node_revision`
            SET `nid` = {$node_id},
            `title` = '{$row['intervention_name']}',
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
            UPDATE `{$db_name_drupal}`.`node`
            SET `vid` = {$revision_id}
            WHERE `nid` = {$node_id}
        ";
        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error);
        }

        // now we get to the business of inserting data into CCK fields
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

        unset($insert['field_reporting_year_value']);
        $insert['field_college_reference_nid'] = $row['institution_nid'];
        insert_drupal_cck_field('college_reference', $insert);

        unset($insert['field_college_reference_nid']);
        $intervention_types = explode('|', $row['intervention_type']);
        foreach ($intervention_types as $t) {
            $insert['field_intervention_type_value'] = @$map_intervention_type[$t];
            insert_drupal_cck_field('intervention_type', $insert);
        }

        unset($insert['field_intervention_type_value']);
        $content_areas = explode('|', $row['content_area']);
        foreach ($content_areas as $c) {
            $insert['field_content_area_value'] = @$map_content_area[$c];
            insert_drupal_cck_field('content_area', $insert);
        }

        unset($insert['field_content_area_value']);
        $tp = explode('|', $row['target_population']);
        foreach ($tp as $t) {
            $insert['field_target_population_value'] = @$map_target_pop[$t];
            insert_drupal_cck_field('target_population', $insert);
        }

        unset($insert['field_target_population_value']);
        $insert['field_target_gender_value'] = $row['gender'];
        insert_drupal_cck_field('target_gender', $insert);

        unset($insert['field_target_gender_value']);
        $insert['field_target_ethnicity_value'] = $row['ethnicity'];
        insert_drupal_cck_field('target_ethnicity', $insert);

        unset($insert['field_target_ethnicity_value']);
        $race = explode('|', $row['race']);
        foreach ($race as $r) {
            $insert['field_target_race_value'] = @$map_race[$r];
            insert_drupal_cck_field('target_race', $insert);
        }

        unset($insert['field_target_race_value']);
        $insert['field_start_year_value'] = $row['start_date'];
        insert_drupal_cck_field('start_year', $insert);

        unset($insert['field_start_year_value']);
        $insert['field_promising_practice_value'] = $row['promising'];
        insert_drupal_cck_field('promising_practice', $insert);

        unset($insert['field_promising_practice_value']);
        $insert['field_why_promising_value'] = $row['promising_desc'];
        $insert['field_why_promising_format'] = 'filtered_html';
        insert_drupal_cck_field('why_promising', $insert);

        unset($insert['field_why_promising_value']);
        unset($insert['field_why_promising_format']);
        $insert['field_proportion_served_value'] = $row['proportion_served'];
        insert_drupal_cck_field('proportion_served', $insert);

        unset($insert['field_proportion_served_value']);
        $insert['field_outcome_indicators_value'] = $outcome_indicators;
        $insert['field_outcome_indicators_format'] = 'filtered_html';
        insert_drupal_cck_field('outcome_indicators', $insert);

        unset($insert['field_outcome_indicators_value']);
        unset($insert['field_outcome_indicators_format']);
        $insert['field_legacy_id_value'] = $row['intervention_id'];
        insert_drupal_cck_field('legacy_id', $insert);

        unset($insert['field_legacy_id_value']);
        $insert['field_intervention_status_value'] = @$map_status[$row['intervention_status']];
        insert_drupal_cck_field('intervention_status', $insert);
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

mysqli_close($DBCONN);
die(0);
?>