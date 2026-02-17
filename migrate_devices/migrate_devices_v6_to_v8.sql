/*
  rConfig v6 → v8 Device Migration Script
  ---------------------------------------
  This script generates INSERT statements for all devices in rConfig v6
  and prepares them for import into rConfig v8.

  Usage:
    1. Run this query on your rConfig v6 database.
    2. Copy the generated INSERT statements into a .sql file.
    3. Execute that file against your rConfig v8 database.
*/

SELECT CONCAT(
  'INSERT INTO temp_devices (',
    'device_name, ',
    'device_ip, ',
    'device_port_override, ',
    'device_default_creds_on, ',
    'device_cred_id, ',
    'device_username, ',
    'device_password, ',
    'device_enable_password, ',
    'ssh_key_id, ',
    'device_main_prompt, ',
    'device_enable_prompt, ',
    'device_category_id, ',
    'device_template, ',
    'device_model, ',
    'device_version, ',
    'device_added_by',
  ') VALUES (',
    IFNULL(CONCAT('\'', device_name, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_ip, '\''), 'NULL'), ', ',
    IFNULL(device_port_override, 'NULL'), ', ',
    IFNULL(device_default_creds_on, '0'), ', ',
    IFNULL(device_cred_id, 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_username, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_password, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_enable_password, '\''), 'NULL'), ', ',
    IFNULL(ssh_key_id, 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_main_prompt, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_enable_prompt, '\''), 'NULL'), ', ',
    IFNULL(device_category_id, 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_template, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_model, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_version, '\''), 'NULL'), ', ',
    IFNULL(CONCAT('\'', device_added_by, '\''), 'NULL'),
  ');'
) AS migrate_sql
FROM devices;
