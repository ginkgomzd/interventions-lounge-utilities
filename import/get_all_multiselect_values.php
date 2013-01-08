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



        'target_population' => array(
            '' => array(
                '#primarily African Americans from 3 of the lowest achieving high schools#',
                '#All students[^t]+testing into a[^d]developmenta[^l]+l education[^c]course; all[^o]+other target[^g]+groups[^d]+described in[^\*]\*\* apply#',
                '#25\-29#',
                '#9 or more credits#',
                '#African \-American males who test into at least one develop\-mental class#',
                '#African American( and Hispanic| non\-Hispanic)?#',
                '#Alaskan Native#',
                '#All new, incoming and transfer students in General Studies and Develop\-mental Ed\.#',
                '#All new(?! students)#',
                '#All races#',
                '#All students in math courses; now includes students in other gateway courses#',
                '#All students testing into two or more developmental classes#',
                '#All students with less than half of program completion and all students with more than half of program completion with lower than 2\.0 overall GPA#',
                '#Asian#',
                '#(Race Ethnicity: )?Black#',
                '#Other: any[^s]+student interested in[^i]+improving his/her[^C]+COMPASS placement score#',
                '#COMPASS placement score#',
                '#Developmental Math( and English students)?#',
                '#Engineering & Technical Studies and Arts#',
                '#Fall10, scaled up to[^a]+all students in English composition#',
                '#Males, age 20\-25 \(in accordance with institution grant\)#',
                '#(Fe)?males?#i',
                '#•        #',
                '#o        #',
                '#: Yes#',
                '#Age: 18-24#',
                '#Basic Skills \(ABE/GED\)#',
                '#Educationally underserved students#',
                '#Ethnicity: Any#',
                '#First Quarter students#',
                '#GPA range: Any#',
                '#Gender: (Any|Male)#',
                '#(non-)?Hispanic#',
                '#Initially( students in Gatekeeper courses and Developmental Education, but expanded to include any discipline)?#',
                '#Introductory courses#',
                '#Latino students#',
                '#Liberal Studies students (who are )?referred for developmental math#i',
                '#Gender:( Any)?#',
                '#Native Hawaiian#',
                '#Other Pacific Islander#',
                '#Other: (LGBTA and Veteran students|Please Describe|Undecided(, degree seeking intent)?)#',
                '#Other: Returning Students -Themed learning communities around career pathways\(such as criminal justice\)#',
                '#Pre-(college|program) students#',
                '#Race(: (All|American Indian))?#',
                '#Reading and English#',
                '#Returning students[^s]+students age 25\+#',
                '#Science#',
                '#Students in First and Second Year Courses#',
                '#Students in gate\-keeper and dev ed courses#',
                '#Students in need of bolstering basic writing and math skills#',
                '#Students needing 2 or more developmental course#',
                '#Students testing below college level math#',
                '#Students who are required to take college readiness placement tests#',
                '#This is an indirect student intervention because we are assessing the parents but tracking the students. It by informing the parent we expect to indirectly influence[^n]+new and transfer students.#',
                '#N/A#',
                '#White#',
                '#and 30 and older#',
                '#and Education#',
                '#lowest level developmental#',
                '#undecided major#',
                '#degree, certificate, or transfer students#',
                // get rid of some non-printing characters
                '#' . chr(194) . chr(160) . '#',
            ),
            'Academically Underprepared Students|ESL-ESOL-ELL' => array(
                '#Academically underprepared studentsESL#',
            ),
            'Enrollment: Full Time Students|First-time Students' => array(
                '#first-time full-time in Business#',
            ),
            'ESL-ESOL-ELL|First-time Students' => array(
                '#New First Time In College students and Other \(new transfer students, all students attending TCC spring 2007 who were in any of the following categories were also required to complete an ILP: Achieving the Dream pilot student, International student, student using Disability Support Services, student  in College Prep courses \)\.#',
            ),
            'Academically Underprepared Students' => array(
                '#All academically underprepared students\.  May include first time students#',
                '#Acad Underpre\-pared#',
                '#Academically und\.#',
                '#Academically underprepared students 38 or higher on math accuplacer#',
                '#(• )?Academically[^u]+un(der)?( )?prepared([^s]+students)?#i',
            ),
            'Enrollment: Full Time Students' => array(
                '#Student enrollment status: Full( Time)?#',
                '#(?<!Enrollment: )Full(-| )Time( students)?#i',
            ),
            'Enrollment: Part Time Students' => array(
                '#Student enrollment status: Part Time#',
                '#Student[^E]+Enrollment Status: Part-[^T]+Time#',
                '#Evening Students#',
                '#(?<!Enrollment: )Part(-| )Time#i',
            ),
            'ESL-ESOL-ELL' => array(
                '#(?<!ESL\-ESOL\-)ELL#',
                '#(‚Ä¢        )?ESL( students)?(?!-ESOL\-ELL)#',
                '#ESOL(?!-ELL)#',
            ),
            'Faculty and Staff' => array(
                '#Other:[^F]+Faculty who teach gateway courses#',
                '#This in an indirect  student intervention because we are training and assessing faculty advisers, but is through their knowledge students will be guided\. The students being advised are all new and transfer students, students with less than half of program completion, and students with more than half of program completion with less than a 2\.0 overall GPA#',
            ),
            'Financial Aid Status' => array(
                '#Financial Risk population#',
                '#Financial aid status: Any#',
                '#Low Income( Students with financial needs)?#i',
                '#Full Pell Eligible#',
            ),
            'First Generation' => array(
                '#and/or first generation college students#',
                '#(‚Ä¢        )?First-? Gen(eration)?( students)?#i',
                '#• First[^G]+Generation#',
            ),
            'First-time Students' => array(
                '#First-time students: Yes#',
                '#All FTIC students who attend 1st year student orientation conducted by the Student Support Services and Student Life#',
                '#All incoming first-time#',
                '#FTIC students who test into College Prep#',
                '#FY#i',
                '#First Year( Students)?#',
                '#First time in college#',
                '#(• )?First(-| )time( (in College )?students\.?)?#i',
                '#(• )?First[^t]+time[^s]+students#',
            ),
            'High School Students' => array(
                '#2010\-2011 high school graduates with developmental course need in at least one area as based upon the college placement test#',
            ),
            'Other' => array(
                '#New Students#',
                '#Non-traditional students#',
                '#Other: All new students#',
                '#Other: Liberal Studies majors#',
                '#Other: Students who are unsuccessful in alternative delivery classes#',
                '#Other: students in gatekeeper courses#',
            ),
            'All Students' => array(
                '#All EPCC students#',
                '#All students#',
                '#Age: All Students#',
                '#Age: Any#',
                '#\bAll\b(?! Students)#',
            ),
        ),



        'race' => array(
            'BAANH' => array( // temporary label, replaced again later
                '#Black/African American non-Hispanic#',
                '#African American non-Hispanic#',
            ),
            'All Races' => array(
                // no replacements, just explicitly stating an acceptable value
            ),
            'American Indian or Alaska Native' => array(
                '#Alaskan Native#',
                '#Native Hawaiian#',
                '#•        Race: American Indian#',
            ),
            'Black or African American' => array(
                '#African American and Hispanic#',
                '#(?<!Black or )African American#',
                '#Black & Latino Males#',
                '#Black(?! or African American)#',
            ),
            // get rid of temporary placeholder
            'Black or African American non-Hispanic' => array(
                '#BAANH#',
            ),
            'Other' => array(
                '#Asian#',
                '#Other Pacific Islander#',
            ),
            '' => array(
                // get rid of some non-printing characters
                '#' . chr(194) . chr(160) . '#',
                // categories to remove
                '#(?<!non-)Hispanic#',
                '#academically underprepared students#',
                '#first( generation|-time students)#',
            ),
        ),
        'outcome_indicators' => array(),
    );
}
?>