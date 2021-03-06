################################################################
# FIREWALLS for PCF
################################################################

# Create FIREWALL SECTIONS and RULES for PCF

# Firewall Section for PCF
resource "nsxt_firewall_section" "pcf_foundation_firewall_section" {
  description  = "PCF Foundation Firewall Section"
  display_name = "pcf_foundation_firewall_section"
  applied_to {
      target_type = "NSGroup"
      target_id   = "${nsxt_ns_group.nsg_pcf.id}"
    }
  section_type = "LAYER3"
  stateful     = true

# Firewall Rules for PCF

  rule {
    display_name = "Allow SSH from the Bastion host to the PCF Deployment VMs"
    description  = "This rule allows SSH from the Bastion Host to the VMs in the Deployment Network"
    action       = "ALLOW"
    logged       = false
    ip_protocol  = "IPV4"
    direction    = "IN"
    source {
      target_type = "NSGroup"
      target_id   = "${nsxt_ns_group.nsg_pcf_bastion.id}"
    }
    destination {
      target_type = "NSGroup"
      target_id   = "${nsxt_ns_group.nsg_pcf_deployment.id}"
    }
      service {
      target_type = "NSService"
      target_id   = "${nsxt_l4_port_set_ns_service.pcf_ssh_ns_service.id}"
      }
}
}
