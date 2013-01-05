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
                '#Developmental Education and Gatekeeper Courses#',
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
            '' => array(
                // get rid of some non-printing characters
                '#' . chr(194) . chr(160) . '#',
                // categories to remove
                '#All Disciplines#',
                '#All disciplines#',
                '#Under-Prepared Students#',
                '#Under-prepared Students#',
            ),
            // end hacks

            'Advising' => array(
                '#Advisor#',
                '#advising#',
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
                '#Orientation#',
            ),
            'Faculty Professional Development' => array(
                '#Secondary: Faculty Professional Development#',
                '#Other: Staff Development#',
                '#Faculty Prof Devel#',
                '#Faculty PD#',
                '#Faculty Professional Devel(?!o)#',
                '#Faculty Professional(?! Development)#',
                '#Faculty(?! \w)#',
                '#(?<!Faculty )Professional Development#',
                '#Professional and Character[^D]+Development#'
            ),
            'Developmental Education' => array( // should come after Faculty Profressional Development
                '#Developmental[^E]+Education#',
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
                '#a\.[^S]+Student[^S]+Success[^C]+Course#',
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
                '#information systems#',
            ),
            'Improved Use of Data' => array(
                '#Improved use of data#',
                '#improved use of data#',
                '#(?<!Improved )Use of Data#',
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
            'Student Engagement' => array(
                '#Other: Student Engagement#',
            ),
            'Other' => array(
                '#Other \(new and transfer students[^p]+parents[^f]+family\)#', // Other (new and transfer students’ parents/family)
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
                '#Supplemental[^I]+Instruction#',
                '#supplemental instruction#',
            ),
            'Tutoring' => array(
                '#tutoring#',
            ),
            'Internal Policy Review & Update' => array(
                '#Internal[^P]+Policy[^R]+Review[^&]+&[^U]+Update#',
                '#internal policy review and update#',
            ),
            'Institutional Effectiveness' => array(
                '#Institutional[^E]+Effectiveness#',
            ),
        ),
        'content_area'  => array(
            // hacks go first - some of the delimiting is done pretty poorly
            'Communications|Reading' => array(
                '#Language Arts \(reading, writing, speech\)#',
            ),
            'English|Math' => array(
                '#Dev Ed Math and English#',
                '#Math and English#',
                '#math and english#',
            ),
            'English|Math|Reading' => array(
                '#math english reading#',
            ),
            'English|Reading' => array(
                '#Reading and English#',
                '#reading and english#',
            ),
            'English|Writing' => array(
                '#Writing and English#',
            ),
            'Math|Reading' => array(
                '#Math and Reading#',
            ),
            'Reading|Student Success' => array(
                '#Reading and Gateway#',
            ),
            '' => array(
                // get rid of some non-printing characters
                '#' . chr(194) . chr(160) . '#',
                // categories to remove
                '#All Gatekeeper courses, including math, astronomy, accounting, history, etc\.#',
                '#gatekeeper and online#',
                '#(and )?gatekeeper courses\.?#',
                '#Advising#',
                '#All FTIC students who attend 1st year student orientation conducted by the Student Support Services and Student Life#',
                '#All Programs#',
                '#All Subjects#',
                '#Community Engagement#',
                '#Developmental (e|E)ducation#',
                '#Develpomental#',
                '#Faculty and Staff Development#',
                '#First Quarter Core Courses including: HMDV 110#',
                '#General Studies and Develop-mental Ed\.#',
                '#JB#',
                '#\ball\b#',
                '#etc\.#',
                '#first generation#',
                '#first\-time students#',
                '#and#',
            ),
            // end hacks

            'Arts' => array(
                '#ART#',
                '#Drama#',
            ),
            'Business' => array(
                '#BUS ECON#',
                '#Economics#',
                '#accounting#',
            ),
            'Communications' => array(
                '#COM#',
                '#Communication Studies#',
                '#marketing (and)? multimedia courses#',
            ),
            'Computer Science' => array(
                '#CS#',
                '#Computers#',
            ),
            'English' => array(
                '#Professional Technical (and)? PreCollege English courses#',
                '#(Devel )?ENGL?#',
            ),
            'Humanities' => array(
                '#HIST#',
                '#HUM#',
                '#History#',
                '#PHIL#',
                '#POLSC#',
                '#Psy(chology)?#i',
                '#Sociology#',
                '#history#',
            ),
            'Math' => array(
                '#Basic math, intermediate algebra#',
                '#basic math#i',
                '#College Prep Math#',
                '#Devel(opmental)?[^M]+Math#i',
                '#MATH( initially|ematics)?#i',
            ),
            'Reading' => array(
                '#Developmental Reading#',
                '#Developmental Writing (and)? Reading#',
                '#Developmental reading#',
                '#English Composition#',
                '#English writing#',
                '#Rdg#',
                '#Writing (and)? Reading#',
                '#writing#',
                '#Writing#',
                '#\breading#',
            ),
            'Science' => array(
                '#BIO#',
                '#CHEM#',
                '#GEOG#',
                '#now Science#',
            ),
            'Student Success' => array(
                '#College Navigation Skills  &  Student Success Course#',
                '#College Skills#',
                '#First Yr Exp#',
                '#First\-Year Seminar#',
                '#Learning Skills#',
                '#Student Life Skills \(SLS\)( (and)? one nonReading general education course\.)?#',
                '#Student Success Courses#',
                '#Student Sup(port)?#',
                '#Success (Course|Seminar)#',
                '#(and)? First Year Seminar#',
                '#college knowledge#',
                '#gateway#',
                '#study skills#',
            ),
        ),
        'target_population' => array(),
        'race' => array(),
        'outcome_indicators' => array(),
    );
}
?>