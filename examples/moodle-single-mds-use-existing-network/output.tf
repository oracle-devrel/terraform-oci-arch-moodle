## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "moodle_home_URL" {
  value = "http://${module.oci-arch-moodle.public_ip[0]}/"
}

output "generated_ssh_private_key" {
  value     = module.oci-arch-moodle.generated_ssh_private_key
  sensitive = true
}

output "generated_ssh_public_key" {
  value     = module.oci-arch-moodle.generated_ssh_public_key
  sensitive = true
}

output "moodle_admin_user" {
  value = var.moodle_admin_user
}

output "moodle_admin_password" {
  value = var.moodle_admin_password
}

output "mds_instance_ip" {
  value = module.mds-instance.mysql_db_system.ip_address
  sensitive = true
}