###############################################################
# NSGROUPS for PCF
################################################################

# Create PCF NSGROUPs with dynamic membership criteria

# Create PCF NSGROUP
resource "nsxt_ns_group" "nsg-pcf" {
  description  = "All VMs deployed as part of the PCF Foundation will be added to this NSGroup"
  display_name = "nsg-pcf"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf"
  }
}

# Create PCF Infrastructure NSGROUP
resource "nsxt_ns_group" "nsg-pcf-infrastructure" {
  description  = "All VMs deployed to the PCF Infrastructure Network will be added to this NSGroup"
  display_name = "nsg-pcf-infrastructure"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf-infrastructure"
  }
}

# Create PCF Deployment NSGROUP
resource "nsxt_ns_group" "nsg-pcf-deployment" {
  description  = "All VMs deployed to the PCF Deployment Network will be added to this NSGroup"
  display_name = "nsg-pcf-deployment"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf-deployment"
  }
}

# Create PCF Services NSGROUP
resource "nsxt_ns_group" "nsg-pcf-services" {
  description  = "All VMs deployed to the PCF Services Network will be added to this NSGroup"
  display_name = "nsg-pcf-services"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf-services"
  }
}

# Create PCF Bastion NSGROUP
resource "nsxt_ns_group" "nsg-pcf-bastion" {
  description  = "The Bastion/Jumpbox VMs will be added to this NSGroup"
  display_name = "nsg-pcf-bastion"
  membership_criteria {
    target_type = "VirtualMachine"
    scope       = "component"
    tag         = "pcf-bastion"
  }
}
