# Configure the VMware NSX-T Provider
provider "nsxt" {
    host     = "${var.nsxt_manager}"
    username = "${var.nsxt_manager_user}"
    password = "${var.nsxt_manager_password}"

    allow_unverified_ssl = "${var.allow_unverified_ssl}"
}

terraform {
  required_version = "< 0.12.0"
}
