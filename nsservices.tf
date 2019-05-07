################################################################
# NSSERVICES for PCF
################################################################

# Create NSSERVICES for PCF

# SSH Service for PCF 
resource "nsxt_l4_port_set_ns_service" "pcf_ssh_ns_service" {
  description       = "SSH Service for PCF"
  display_name      = "pcf_ssh_ns_service"
  protocol          = "TCP"
  destination_ports = ["22"]
}

# HTTP Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_http_ns_service" {
  description       = "HTTP Service for PCF"
  display_name      = "pcf_http_ns_service"
  protocol          = "TCP"
  destination_ports = ["80"]
}

# HTTPS Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_https_ns_service" {
  description       = "HTTPS Service for PCF"
  display_name      = "pcf_https_ns_service"
  protocol          = "TCP"
  destination_ports = ["443"]
}

# IPSec Service for PCF
resource "nsxt_ip_protocol_ns_service" "pcf_ipsec_ns_service" {
  description  = "IPSec Service for PCF"
  display_name = "pcf_ipsec_ns_service"
  protocol     = "AH"
}
