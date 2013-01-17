#!/usr/bin/php -q
<?php
/*
 * Normalize phone numbers.
 *
 * @param string Name of config file
 * @return boolean 0 on success, 1 on failure
 */
require_once __DIR__ . '/common.inc';
define('DB_TABL', 'institutions');

$DBCONN = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME) OR error_out($DBCONN->connect_errno);

$select = "
SELECT `institution_id`, `raw_phone`
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

    $id = $row['institution_id'];
    $phone_parts = get_phone_parts($row['raw_phone']);
    $record['phone'] = $phone_parts['main'];
    $record['phone_ext'] = $phone_parts['ext'];

    foreach ($record as $k => $v) {
        $sql_fields[] = "`{$k}` = " . (in_array($v, array('', NULL)) ? 'NULL' : "'" . $DBCONN->real_escape_string(trim($v)) . "'");
    }

    $sql  = 'UPDATE `' . DB_TABL . '`';
    $sql .= 'SET ';
    $sql .= implode(', ', $sql_fields);
    $sql .= " WHERE `institution_id` = '{$id}'";

    $r = $DBCONN->query($sql);
    if (!$r) {
        error_out($DBCONN->error);
    }
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