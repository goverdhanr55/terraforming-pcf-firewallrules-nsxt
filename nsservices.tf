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

# HTTP Service for PCF - 8080
resource "nsxt_l4_port_set_ns_service" "pcf_http_8080_ns_service" {
  description       = "HTTP Service for PCF - 8080"
  display_name      = "pcf_http_8080_ns_service"
  protocol          = "TCP"
  destination_ports = ["8080"]
}

# HTTPS Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_https_ns_service" {
  description       = "HTTPS Service for PCF"
  display_name      = "pcf_https_ns_service"
  protocol          = "TCP"
  destination_ports = ["443"]
}

# HTTPS Service for PCF - 8443
resource "nsxt_l4_port_set_ns_service" "pcf_https_8443_ns_service" {
  description       = "HTTPS Service for PCF - 8443"
  display_name      = "pcf_https_8443_ns_service"
  protocol          = "TCP"
  destination_ports = ["8443"]
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

# BOSH Registry Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_bosh_registry_ns_service" {
  description       = "BOSH Registry Service for PCF"
  display_name      = "pcf_bosh_registry_ns_service"
  protocol          = "TCP"
  destination_ports = ["25777"]
}

# BOSH Blobstore Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_bosh_blobstore_ns_service" {
  description       = "BOSH Blobstore Service for PCF"
  display_name      = "pcf_bosh_blobstore_ns_service"
  protocol          = "TCP"
  destination_ports = ["25250"]
}

# JMX Monitoring Server Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_jmx_monitoring_server_ns_service" {
  description       = "JMX Monitoring Server Service for PCF"
  display_name      = "pcf_jmx_monitoring_server_ns_service"
  protocol          = "TCP"
  destination_ports = ["44444"]
}

# JMX Monitoring RMI Registry Service for PCF
resource "nsxt_l4_port_set_ns_service" "pcf_jmx_monitoring_rmi_registry_ns_service" {
  description       = "JMX Monitoring RMI Registry Service for PCF"
  display_name      = "pcf_jmx_monitoring_rmi_registry_ns_service"
  protocol          = "TCP"
  destination_ports = ["44445"]
}

# PCF Routing API Service
resource "nsxt_l4_port_set_ns_service" "pcf_routing_api_ns_service" {
  description       = "PCF Routing API Service - Routing API Port"
  display_name      = "pcf_routing_api_ns_service"
  protocol          = "TCP"
  destination_ports = ["3000"]
}

# PCF Doppler Metron Service
resource "nsxt_l4_port_set_ns_service" "pcf_doppler_metron_ns_service" {
  description       = "PCF Doppler Metron Service - Metron Endpoint Dropsonde Port"
  display_name      = "pcf_doppler_metron_ns_service"
  protocol          = "TCP"
  destination_ports = ["3457"]
}

# PCF VXLAN Policy Agent Service
resource "nsxt_l4_port_set_ns_service" "pcf_vxlan_policy_agent_ns_service" {
  description       = "PCF VXLAN Policy Agent Service - CF Networking Policy Server Internal Listen Port"
  display_name      = "pcf_vxlan_policy_agent_ns_service"
  protocol          = "TCP"
  destination_ports = ["4003"]
}

# PCF Silk Controller Service
resource "nsxt_l4_port_set_ns_service" "pcf_silk_controller_ns_service" {
  description       = "PCF Silk Controller Service - CF Networking Silk Controller Listen Port"
  display_name      = "pcf_silk_controller_ns_service"
  protocol          = "TCP"
  destination_ports = ["4103"]
}

# PCF NATS Service
resource "nsxt_l4_port_set_ns_service" "pcf_nats_ns_service" {
  description       = "PCF NATS Service - Router NATS Port"
  display_name      = "pcf_nats_ns_service"
  protocol          = "TCP"
  destination_ports = ["4222"]
}

# PCF Diego File Server Service
resource "nsxt_l4_port_set_ns_service" "pcf_diego_file_server_ns_service" {
  description       = "PCF Diego File Server Service - Diego File Server Listen Address"
  display_name      = "pcf_diego_file_server_ns_service"
  protocol          = "TCP"
  destination_ports = ["8080"]
}

# PCF Doppler gRPC Service
resource "nsxt_l4_port_set_ns_service" "pcf_doppler_grpc_ns_service" {
  description       = "PCF Doppler gRPC Service - Loggregator Doppler gRPC Port"
  display_name      = "pcf_doppler_grpc_ns_service"
  protocol          = "TCP"
  destination_ports = ["8082"]
}

# PCF Reverse Log Proxy Gateway Service
resource "nsxt_l4_port_set_ns_service" "pcf_reverse_log_proxy_gateway_ns_service" {
  description       = "PCF Reverse Log Proxy Gateway Service - Loggregator Reverse Log Proxy Gateway - CF Auth Proxy Proxy Port"
  display_name      = "pcf_reverse_log_proxy_gateway_ns_service"
  protocol          = "TCP"
  destination_ports = ["8083"]
}

# PCF UAA Service
resource "nsxt_l4_port_set_ns_service" "pcf_uaa_ns_service" {
  description       = "PCF UAA Service - UAA SSL Port"
  display_name      = "pcf_uaa_ns_service"
  protocol          = "TCP"
  destination_ports = ["8443"]
}

# PCF Credhub Service
resource "nsxt_l4_port_set_ns_service" "pcf_credhub_ns_service" {
  description       = "PCF Credhub Service - Credhub Port"
  display_name      = "pcf_credhub_ns_service"
  protocol          = "TCP"
  destination_ports = ["8844"]
}

# PCF BOSH DNS Health Service
resource "nsxt_l4_port_set_ns_service" "pcf_bosh_dns_health_ns_service" {
  description       = "PCF BOSH DNS Health Service - Health Server Port from BOSH DNS Release"
  display_name      = "pcf_bosh_dns_health_ns_service"
  protocol          = "TCP"
  destination_ports = ["8853"]
}


