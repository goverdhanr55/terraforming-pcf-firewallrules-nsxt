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

# NTP Service for PCF - TCP
resource "nsxt_l4_port_set_ns_service" "pcf_ntp_tcp_ns_service" {
  description       = "NTP Service for PCF - TCP"
  display_name      = "pcf_ntp_tcp_ns_service"
  protocol          = "TCP"
  destination_ports = ["123"]
}

# NTP Service for PCF - UDP
resource "nsxt_l4_port_set_ns_service" "pcf_ntp_udp_ns_service" {
  description       = "NTP Service for PCF - UDP"
  display_name      = "pcf_ntp_udp_ns_service"
  protocol          = "UDP"
  destination_ports = ["123"]
}

# Syslog Service for PCF - TCP
resource "nsxt_l4_port_set_ns_service" "pcf_syslog_tcp_ns_service" {
  description       = "Syslog Service for PCF - TCP"
  display_name      = "pcf_syslog_tcp_ns_service"
  protocol          = "TCP"
  destination_ports = ["514"]
}

# Syslog Service for PCF - UDP
resource "nsxt_l4_port_set_ns_service" "pcf_syslog_udp_ns_service" {
  description       = "Syslog Service for PCF - UDP"
  display_name      = "pcf_syslog_udp_ns_service"
  protocol          = "UDP"
  destination_ports = ["514"]
}

# SMTP Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_smtp_ns_service" {
  description       = "SMTP Service for PCF"
  display_name      = "pcf_smtp_ns_service"
  protocol          = "TCP"
  destination_ports = ["25", "465", "587"]
}

# LDAP Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_ldap_ns_service" {
  description       = "LDAP Service for PCF"
  display_name      = "pcf_ldap_ns_service"
  protocol          = "TCP"
  destination_ports = ["636", "389"]
}

# IPSec Service for PCF
resource "nsxt_ip_protocol_ns_service" "pcf_ipsec_ns_service" {
  description  = "IPSec Service for PCF"
  display_name = "pcf_ipsec_ns_service"
  protocol     = "51"
}

# IPSec Encapsulation Service for PCF
resource "nsxt_ip_protocol_ns_service" "pcf_ipsec_encapsulation_ns_service" {
  description  = "IPSec Encapsulation Service for PCF"
  display_name = "pcf_ipsec_encapsulation_ns_service"
  protocol     = "50"
}

# IPSec UDP Encapsulation Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_ipsec_udp_encapsulation_ns_service" {
  description       = "IPSec UDP Encapsulation Service for PCF"
  display_name      = "pcf_ipsec_udp_encapsulation_ns_service"
  protocol          = "UDP"
  destination_ports = ["500"]
}

# PostgreSQL Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_postgresql_ns_service" {
  description       = "PostgreSQL Service for PCF"
  display_name      = "pcf_postgresql_ns_service"
  protocol          = "TCP"
  destination_ports = ["5432"]
}

# MySQL Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_mysql_ns_service" {
  description       = "MySQL Service for PCF"
  display_name      = "pcf_mysql_ns_service"
  protocol          = "TCP"
  destination_ports = ["3306"]
}

# NATS Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_nats_ns_service" {
  description       = "NATS Service for PCF"
  display_name      = "pcf_nats_ns_service"
  protocol          = "TCP"
  destination_ports = ["4222"]
}
