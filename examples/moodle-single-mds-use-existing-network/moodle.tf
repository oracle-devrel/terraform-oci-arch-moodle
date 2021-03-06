## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "oci-arch-moodle" {
  source                    = "github.com/oracle-devrel/terraform-oci-arch-moodle"
  tenancy_ocid              = var.tenancy_ocid
  vcn_id                    = oci_core_virtual_network.moodle_mds_vcn.id
  numberOfNodes             = 1
  availability_domain_name  = var.availability_domain_name == "" ? lookup(data.oci_identity_availability_domains.ADs.availability_domains[0], "name") : var.availability_domain_name
  compartment_ocid          = var.compartment_ocid
  image_id                  = lookup(data.oci_core_images.InstanceImageOCID.images[0], "id")
  shape                     = var.node_shape
  label_prefix              = var.label_prefix
  ssh_authorized_keys       = var.ssh_public_key
  mds_ip                    = module.mds-instance.mysql_db_system.ip_address
  moodle_subnet_id          = oci_core_subnet.moodle_subnet_public.id
  admin_password            = var.admin_password
  admin_username            = var.admin_username
  moodle_schema             = var.moodle_schema
  moodle_name               = var.moodle_name
  moodle_password           = var.moodle_password
  moodle_admin_user         = var.moodle_admin_user
  moodle_admin_password     = var.moodle_admin_password
  moodle_admin_email        = var.moodle_admin_email
  moodle_site_fullname      = var.moodle_site_fullname
  moodle_site_shortname     = var.moodle_site_shortname
  flex_shape_ocpus          = var.node_flex_shape_ocpus
  flex_shape_memory         = var.node_flex_shape_memory
}

