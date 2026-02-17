/*
  Example Output – rConfig v6 → v8 Migration
  ------------------------------------------
  This file demonstrates what the migration script will generate
  for a sample device record in rConfig v6.
*/

-- Example device row:
--   device_name = Router1
--   device_ip = 192.168.1.1
--   device_port_override = NULL
--   device_default_creds_on = 0

INSERT INTO temp_devices (
  device_name, device_ip, device_port_override, device_default_creds_on,
  device_cred_id, device_username, device_password, device_enable_password,
  ssh_key_id, device_main_prompt, device_enable_prompt, device_category_id,
  device_template, device_model, device_version, device_added_by
) VALUES (
  'Router1', '192.168.1.1', NULL, 0,
  NULL, 'admin', 'password123', 'enablePass',
  NULL, '>', '#', 2,
  'Cisco IOS', 'ISR4451', '15.7', 'majid'
);
