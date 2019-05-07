###############################################################
# NSGROUPS for PCF
################################################################

# Create PCF NSGROUPs with dynamic membership criteria

# Create PCF NSGROUP
resource "nsxt_ns_group" "nsg_pcf" {
  description  = "All VMs deployed as part of the PCF Foundation will be added to this NSGroup"
  display_name = "nsg_pcf"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf"
  }
}

# Create PCF Infrastructure NSGROUP
resource "nsxt_ns_group" "nsg_pcf_infrastructure" {
  description  = "All VMs deployed to the PCF Infrastructure Network will be added to this NSGroup"
  display_name = "nsg_pcf_infrastructure"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf_infrastructure"
  }
}

# Create PCF Deployment NSGROUP
resource "nsxt_ns_group" "nsg_pcf_deployment" {
  description  = "All VMs deployed to the PCF Deployment Network will be added to this NSGroup"
  display_name = "nsg_pcf_deployment"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf_deployment"
  }
}

# Create PCF Services NSGROUP
resource "nsxt_ns_group" "nsg_pcf_services" {
  description  = "All VMs deployed to the PCF Services Network will be added to this NSGroup"
  display_name = "nsg_pcf_services"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf_services"
  }
}

# Create PCF Bastion NSGROUP
resource "nsxt_ns_group" "nsg_pcf_bastion" {
  description  = "The Bastion/Jumpbox VMs will be added to this NSGroup"
  display_name = "nsg_pcf_bastion"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf_bastion"
  }
}
