################################################################
# NSSERVICES for PCF
################################################################

# Create NSSERVICES for PCF

# SSH Service for PCF 
resource "nsxt_l4_port_set_ns_service" "pcf-ssh-ns-service" {
  description       = "SSH Service for PCF"
  display_name      = "pcf-ssh-ns-service"
  protocol          = "TCP"
  destination_ports = ["22"]
}

# HTTP Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf-http-ns-service" {
  description       = "HTTP Service for PCF"
  display_name      = "pcf-http-ns-service"
  protocol          = "TCP"
  destination_ports = ["80"]
}

# HTTPS Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf-https-ns-service" {
  description       = "HTTPS Service for PCF"
  display_name      = "pcf-https-ns-service"
  protocol          = "TCP"
  destination_ports = ["443"]
}
