## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "moodle_home_URL" {
  value = "http://${module.moodle.public_ip[0]}/"
}

output "generated_ssh_private_key" {
  value     = module.moodle.generated_ssh_private_key
  sensitive = true
}

output "moodle_name" {
  value = var.moodle_name
}

output "moodle_password" {
  value = var.moodle_password
}

output "moodle_database" {
  value = var.moodle_schema
}

output "mds_instance_ip" {
  value = module.mds-instance.mysql_db_system.ip_address
  sensitive = true
}