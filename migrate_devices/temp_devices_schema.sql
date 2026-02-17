CREATE TABLE temp_devices (
  device_id INT AUTO_INCREMENT PRIMARY KEY,
  device_name VARCHAR(255),
  device_ip VARCHAR(255),
  device_port_override INT,
  device_default_creds_on TINYINT(1),
  device_cred_id INT,
  device_username VARCHAR(255),
  device_password VARCHAR(255),
  device_enable_password VARCHAR(255),
  ssh_key_id INT,
  device_main_prompt VARCHAR(255),
  device_enable_prompt VARCHAR(255),
  device_category_id INT,
  device_template VARCHAR(255),
  device_model VARCHAR(255),
  device_version VARCHAR(255),
  device_added_by VARCHAR(255)
);
