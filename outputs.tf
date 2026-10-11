output "iploadbalancing_tcp_farms_id" {
  description = "Map of id values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no id are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iploadbalancing_tcp_farms_balance" {
  description = "Map of balance values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no balance are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.balance if v.balance != null && length(v.balance) > 0 }
}
output "iploadbalancing_tcp_farms_display_name" {
  description = "Map of display_name values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no display_name are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iploadbalancing_tcp_farms_port" {
  description = "Map of port values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no port are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.port if v.port != null }
}
output "iploadbalancing_tcp_farms_probe" {
  description = "Map of probe values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no probe are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => one(v.probe) if v.probe != null && length(v.probe) > 0 }
}
output "iploadbalancing_tcp_farms_service_name" {
  description = "Map of service_name values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no service_name are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "iploadbalancing_tcp_farms_stickiness" {
  description = "Map of stickiness values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no stickiness are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.stickiness if v.stickiness != null && length(v.stickiness) > 0 }
}
output "iploadbalancing_tcp_farms_vrack_network_id" {
  description = "Map of vrack_network_id values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no vrack_network_id are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.vrack_network_id if v.vrack_network_id != null }
}
output "iploadbalancing_tcp_farms_zone" {
  description = "Map of zone values across all iploadbalancing_tcp_farms, keyed the same as var.iploadbalancing_tcp_farms except keys with no zone are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_farm.iploadbalancing_tcp_farms : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

