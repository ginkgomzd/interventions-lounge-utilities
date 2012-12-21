#!/usr/bin/php -q
<?php
/**
 * This script gets all the values that ATD has been using in their multiselects
 * and presents them in order of most to least used.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */

require_once __DIR__ . '/common.inc';
define('DB_TABL', 'gdoc');

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME) OR error_out($DBCONN->connect_errno);

// select all rows, we want intervention_type, content_area, target_population, race, outcome_indicators
$sql = 'SELECT `intervention_type`, `content_area`, `target_population`,
    `race`, `outcome_indicators` FROM `' . DB_TABL . '` WHERE 1';

if ($result = $DBCONN->query($sql)) {
    $ms_values = array(
        'intervention_type' => array(),
        'content_area'  => array(),
        'target_population' => array(),
        'race' => array(),
        'outcome_indicators' => array(),
    );

    $map = get_multiselect_mapping();

    // loop through them, split each value on comma, semicolon, pipe, and slash
    while ($row = $result->fetch_assoc()) {

        foreach ($row as $field_name => $sloppy_data) {
            // check to see if we can already map these values
            foreach ($map[$field_name] as $normalized_value => $arr) {
                foreach ($arr as $pattern) {
                    $sloppy_data = preg_replace($pattern, $normalized_value, $sloppy_data);
                }
            }
            unset($arr, $normalized_value, $pattern);

            $values = preg_split('#[\n\r,;/|]#', $sloppy_data);

            foreach ($values as $v) {
                $v = trim($v);
                if ($v) { // this should weed out empty strings and such
                    if (!array_key_exists($v, $ms_values[$field_name])) {
                        $ms_values[$field_name][$v] = 1;
                    } else {
                        $ms_values[$field_name][$v]++;
                    }
                }
            }

        }
    }

    $result->free();

    // sort and print
    foreach ($ms_values as $k => $arr) {
        ksort($arr);
        echo "================\n$k\n================\n";

        foreach ($arr as $label => $cnt) {
            echo "$label,$cnt\n";
        }

        echo "\n\n";
    }


} else {
    error_out('Database could not be queried.');
}

$DBCONN->close();
die(0);

/*
 * Returns array with the following format:
 * $arr[$column_name][$new_label][$old_label]
 *
 * The order of the old labels is significant; the replacements will be done
 * in the order they appear.
 *
 * Let's set a standard: The first letter of each word of each new label
 * will be capitalized, e.g. Community Engagement.
 */
function get_multiselect_mapping () {
    return array(
        'intervention_type' => array(
            // hacks go first - some of the delimiting is done pretty poorly
            'Advising|Developmental Education' => array(
                '#Focused Advising of General Studies and Dev\. Ed\. students#',
            ),
            'Advising|Student Success Course|Student Support Services' => array(
                '#Focused Advising \& Support Services and Success Course#',
            ),
            'Advising|Student Support Services' => array(
                '#Advising from faculty and student support services#',
            ),
            'Developmental Education|Gatekeeper Courses' => array(
                '#Developmental Education  and gateway courses in math  \(Placement\)#',
                '#Revision of developmental and gateway math courses#',
            ),
            'Developmental Education|Gatekeeper Courses|Faculty Professional Development' => array(
                '#Developmental education \& gatekeeper courses through faculty development#',
            ),
            'Internal Policy Review & Update|Student Support Services' => array(
                '#Internal Policy Review \& Update and Student Support Services#',
            ),
            'Learning Communities|Student Success Course|Student Support Services' => array(
                '#Learning Communities \(Student Success Course, Student Support Services\)#',
            ),
            'Policy Change|Student Success Course' => array(
                '#Student success course and Policy change#',
            ),
            'Student Success Course|Student Support Services' => array( // this value replaces
                '#Student Success Course and Student Support Services#',  // this one
            ),
            // get rid of some non-printing characters
            '' => array(
                '#' . chr(194) . chr(160) . '#',
            ),
            // end hacks

            'Advising' => array(
                '#Advisor#',
                '#advising#',
            ),
            'All Disciplines' => array(
                '#All disciplines#',
            ),
            'Budgeting Process' => array(
                '#Budgeting process#',
            ),
            'Committee or Governance Structure' => array(
                '#Committee or governance structure#',
            ),
            'Community Engagement' => array(
                '#Comm Eng#',
                '#Community Engage\.#',
                '#Community engagement#',
            ),
            'Dual Credit Office' => array(
                '#Dual Credit office#',
            ),
            'First-Year Experience' => array(
                '#First  Year Experience#',
                '#First Year Experience#',
                '#First Yr Exp#',
                '#First-year experience#',
                '#FY experience#',
                '#FYE#',
                '#b\.        First year experience#',
            ),
            'Faculty Professional Development' => array(
                '#Secondary: Faculty Professional Development#',
                '#Other: Staff Development#',
                '#Faculty Prof Devel#',
                '#Faculty PD#',
                '#Faculty Professional Devel(?!o)#',
                '#Faculty Professional(?! Development)#',
                '#Faculty(?! \w)#',
            ),
            'Professional and Character Development' => array( // should come before Developmental Education
                '#Professional and Character[^D]+Development#'
            ),
            'Developmental Education' => array( // should come after Faculty Profressional Development
                '#Developmental Ed(?!u)#',
                '#Developmental education math and study skills#',
                '#Developmental education#',
                '#Develop\. Education#',
                '#Devel Ed#',
                '#developmental education  and others#',
                '#developmental ecucation#',
                '#(?<!\w )Development\b#',
                '#Developmental(?! Education)#',
            ),
            'Student Success Course' => array( // should go before Gatekeeper Courses
                '#Student[^S]+Success[^C]+Course#',
                '#Student Success Course\.#',
                '#Student Success course#',
                '#Student success course#',
                '#student success course#',
                '#Student Success(?! Course)#',
            ),
            'Student Support Services' => array(  // should go before Gatekeeper Courses
                '#Student Support(?! Services)#',
                '#Student Sup(?!port)#',
                '#student support services#',
                '#a\.        Student Support Services#',
                '#Student Services#',
            ),
            'Gatekeeper Courses' => array(
                '#Intensive 5 week college prep#',
                '#Gateway courses#',
                '#Gateway Course\b#',
                '#Gateway Courses#',
                '#Gatekeeper course\b#',
                '#Gatekeeper courses#',
                '#Gatekeeper Course\b#',
                '#Gatekeeper(?! C)#',
                '#(?<!\w )Courses?#', // matches Course or Courses
            ),
            'Information Systems' => array(
                '#Improved Use of Data#',
                '#Improved use of data#',
                '#improved use of data#',
                '#Use of Data#',
                '#information systems#',
            ),
            'Institutional Research' => array(
                '#Improved use of institutional research#',
                '#Institutional[^R]+Research#',
                '#(?<! )Research#',
            ),
            'Learning Communities' => array(
                '#Learning Comms#',
                '#Learning Community#',
            ),
            'Mentoring' => array(
                '#Mentors#',
            ),
            'Other' => array(
                '#Other \(new and transfer students[^p]+parents[^f]+family\)#', // Other (new and transfer students’ parents/family)
                '#Other: Student Engagement#',
                '#Other[^(]+\(Direct\)#',
                '#Other[^(]+\(Indirect\)#',
                '#Other[^(]+\(Marketing\)#',
            ),
            'Staff Engagement' => array(
                '#faculty[^s]+staff engagement#',
            ),
            'Supplemental Instruction' => array(
                '#Supplemental Instruction, including mandatory I-BEST Pathways#',
                '#Supp Instr#',
                '#Sup Instr#',
                '#Supplemental(?! Instruction)#',
                '#supplemental instruction#',
            ),
            'Tutoring' => array(
                '#tutoring#',
            ),
            'Internal Policy Review & Update' => array(
                '#internal policy review and update#',
                '#Internal(?! )#',
                '#Policy Change#',
                '#(?<!Internal )Policy Review /& Update#',
            ),
            'Under-Prepared Students' => array(
                '#Under-prepared Students#',
            ),
            'Institutional Effectiveness' => array(
                '#Institutional[^E]+Effectiveness#',
            ),
        ),
        'content_area'  => array(),
        'target_population' => array(),
        'race' => array(),
        'outcome_indicators' => array(),
    );
}
?>