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
define('DB_TABL', 'core_team_leaders');

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME) OR error_out($DBCONN->connect_errno);

$select = "
SELECT `id`, `raw_organization`, `raw_fname`, `raw_lname`, `raw_email`, `raw_phone`, `raw_fax`
FROM " . DB_TABL . "
WHERE 1
";

$result = $DBCONN->query($select);
if (!$result) {
    error_out($DBCONN->error);
}

while ($row = $result->fetch_assoc()) {
    $record = array();
    $sql_fields = array();

    $id = $row['id'];
    $institution_id = extract_from_hyperlink($row['raw_organization']);
    $record['user_id'] = extract_from_hyperlink($row['raw_fname']);
    $record['fname'] = extract_from_hyperlink($row['raw_fname'], 'label');
    $record['lname'] = extract_from_hyperlink($row['raw_lname'], 'label');
    $record['email'] = extract_from_hyperlink($row['raw_email'], 'label');
    $phone_parts = get_phone_parts($row['raw_phone']);
    $record['phone'] = $phone_parts['main'];
    $record['phone_ext'] = $phone_parts['ext'];
    $fax_parts = get_phone_parts($row['raw_fax']);
    $record['fax'] = $fax_parts['main'];
    $record['fax_ext'] = $fax_parts['ext'];

    foreach ($record as $k => $v) {
        $sql_fields[] = "c.`{$k}` = " . (in_array($v, array('', NULL)) ? 'NULL' : "'" . $DBCONN->real_escape_string(trim($v)) . "'");
    }

    $sql  = 'UPDATE `' . DB_TABL . '` c ';
    /*
     * This inner join helps us fix truncated institution IDs... Fortunately,
     * the first 15 chars in each ID are unique as long as they are treated with
     * case-sensitivity (hence the HEX).
     */
    $sql .= 'LEFT JOIN `institutions` i ';
    $sql .= "ON HEX('$institution_id') = HEX(LEFT(i.`institution_id`,15)) ";
    $sql .= 'SET c.`institution_id` = i.`institution_id`, ';
    $sql .= implode(', ', $sql_fields);
    $sql .= " WHERE c.`id` = $id";

    $r = $DBCONN->query($sql);
    if (!$r) {
        error_out($DBCONN->error);
    }
}

$delete = "
DELETE FROM " . DB_TABL . "
WHERE `email` IS NULL
";

if (!$DBCONN->query($delete)) {
    error_out($DBCONN->error . ". Query: $delete");
}

mysqli_close($DBCONN);
die(0);

/*
 * Extract a value from a hyperlink function.
 *
 * @param string $str Haystack
 * @param string $type What to extract; defaults to 'id'
 * @return string The extracted value
 */
function extract_from_hyperlink($str, $type = 'id') {
    $result = '';

    $type = strtolower($type);
    $target = ($type === 'label' ? 2 : 1);

    $pattern = '#=HYPERLINK\("([^"]+)","([^"]+)"\)#';
    $matches = array();

    if(preg_match($pattern, $str, $matches)) {
        $result = $matches[$target];

        // additional processing required for IDs
        if ($target === 1) {
            $result = substr(strrchr($result, '/'), 1);
        }
    }

    return $result;
}
?>