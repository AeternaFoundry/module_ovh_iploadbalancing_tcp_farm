resource "ovh_iploadbalancing_tcp_farm" "iploadbalancing_tcp_farms" {
  for_each = var.iploadbalancing_tcp_farms

  service_name     = each.value.service_name
  zone             = each.value.zone
  balance          = each.value.balance
  display_name     = each.value.display_name
  port             = each.value.port
  stickiness       = each.value.stickiness
  vrack_network_id = each.value.vrack_network_id

  dynamic "probe" {
    for_each = each.value.probe != null ? [each.value.probe] : []
    content {
      force_ssl = probe.value.force_ssl
      interval  = probe.value.interval
      match     = probe.value.match
      method    = probe.value.method
      negate    = probe.value.negate
      pattern   = probe.value.pattern
      port      = probe.value.port
      type      = probe.value.type
      url       = probe.value.url
    }
  }
}

