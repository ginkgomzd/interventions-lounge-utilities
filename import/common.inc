<?php
/**
 * This file contains operations and functions common to our import scripts.
 */

if ($argc < 2) {
    error_out('Config file not specified');
}
$config = $argv[1];
if (!is_readable($config)) {
    error_out('Config file is not readable or does not exist');
}

require_once($config);

/**
 * This function is used to kill a script, with CLI-appropriate die codes and
 * messages.
 *
 * @param type $msg This message gets printed to STDERR
 * @return void
 */
function error_out($msg) {
    global $argv;
    $msg = $argv[0] . ': ' . $msg;
    file_put_contents('php://stderr', $msg . "\n");
    die(1);
}

/**
 * This function is used to insert content into CCK fields.
 *
 * @global object $DBCONN Global database connection
 * @param string $field_name The name of the CCK field, sans field_ prefix.
 * @param array $pairs Keyed by database field names, values to be inserted.
 * @return void
 */
function insert_drupal_cck_field($field_name, array $pairs) {
    global $DBCONN, $db_name_drupal;

    if ($field_name !== 'body') {
        $field_name = 'field_' . $field_name;
    }

    $set_clause = array();
    foreach ($pairs as $k => $v) {
        if (is_null($v)) {
            $set_clause[] = "`{$k}` = NULL";
        } else {
            $set_clause[] = "`{$k}` = '" . $DBCONN->real_escape_string($v) . "'";
        }
    }

    foreach (array('data', 'revision') as $type) {
        $sql = "
            INSERT INTO `{$db_name_drupal}`.`field_{$type}_{$field_name}`
            SET `language` = 'und'," .
                implode(', ', $set_clause);

        if (!$DBCONN->query($sql)) {
            error_out($DBCONN->error . ". Query: " . $sql);
        }
    }
}

/**
 * Given user email, returns user_id. If no user with that email exists, the
 * user is created and the generated ID returned. Drupal is bootstrapped during
 * this function.
 *
 * @param string $email Email address
 * @param boolean $sendmail If set to TRUE, newly created users will be notified
 * of their account.
 * @return in User ID
 */
function get_user_id($email, $sendmail = FALSE) {
    // setting this avoids some PHP notices during bootstrap
    $_SERVER['REMOTE_ADDR'] = '127.0.0.1';

    require_once DRUPAL_ROOT . '/includes/bootstrap.inc';
    drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);

    $user_id = FALSE;

    // try to find the user first
    $account = user_load_by_mail($email);
    if ($account) {
        $user_id = $account->uid;
    } else {
        // we can't find the user, so let's create one
        $account = new stdClass();
        $account->is_new = TRUE;

        /*
         * But first, let's look up the role ID for "Core Team Lead." Using a
         * constant allows us to avoid annoying scope issues while also avoiding
         * looking this up more than we need to.
         */
        if (!defined('ROLE_ID_CTL')) {
            $role_id_ctl = (int) array_search('Core Team Lead', user_roles());
            define('ROLE_ID_CTL', $role_id_ctl);
        }

        $data = array(
            'name' => $email,
            'pass' => user_password(),
            'mail' => $email,
            'status' => 1,
            'init' => $email,
            'roles' => array(
                ROLE_ID_CTL => 'Core Team Lead',
            ),
        );

        $account = user_save($account, $data);
        $user_id = $account->uid;

        // send welcome message if appropriate
        if ($sendmail === TRUE || $sendmail === "TRUE") {
            drupal_mail(
                'user',
                'register_admin_created',
                $email,
                NULL,
                array('account' => $account),
                variable_get('site_email', 'no-reply@achievingthedream.org'),
                TRUE
            );
        }
    }

    return $user_id;
}

/*
 * Return the parts of a phone number
 *
 * @param string $str Phone number
 * @return array Key 'main' contains 10-digit number; key 'ext' contains extension
 */
function get_phone_parts($str) {
    $result = array(
        'main' => NULL,
        'ext' => NULL
    );

    $parts = explode('x', $str);
    if (count($parts) > 2) {
        error_out('Error condition in get_phone_parts: Number has more than 2 parts');
    }

    $result['main'] = preg_replace('#[^0-9]#', '', $parts[0]);

    if (array_key_exists(1, $parts)) {
        $result['ext'] = preg_replace('#[^0-9]#', '', $parts[1]);
    }

    return $result;
}
?>