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

# DNS Service for PCF - TCP
resource "nsxt_l4_port_set_ns_service" "pcf_dns_tcp_ns_service" {
  description       = "DNS Service for PCF - TCP"
  display_name      = "pcf_dns_tcp_ns_service"
  protocol          = "TCP"
  destination_ports = ["53"]
}

# DNS Service for PCF - UDP
resource "nsxt_l4_port_set_ns_service" "pcf_dns_udp_ns_service" {
  description       = "DNS Service for PCF - UDP"
  display_name      = "pcf_dns_udp_ns_service"
  protocol          = "UDP"
  destination_ports = ["53"]
}

# IPSec Service for PCF
resource "nsxt_ip_protocol_ns_service" "pcf_ipsec_ns_service" {
  description  = "IPSec Service for PCF"
  display_name = "pcf_ipsec_ns_service"
  protocol     = "AH"
}

# IPSec Encapsulation Service for PCF
resource "nsxt_ip_protocol_ns_service" "pcf_ipsec_encapsulation_ns_service" {
  description  = "IPSec Encapsulation Service for PCF"
  display_name = "pcf_ipsec_encapsulation_ns_service"
  protocol     = "ESP"
}

# IPSec UDP Encapsulation Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_ipsec_udp_encapsulation_ns_service" {
  description       = "IPSec UDP Encapsulation Service for PCF"
  display_name      = "pcf_ipsec_udp_encapsulation_ns_service"
  protocol          = "UDP"
  destination_ports = ["500"]
}
