variable "iploadbalancing_tcp_farms" {
  description = <<EOT
Map of iploadbalancing_tcp_farms, attributes below
Required:
    - service_name
    - zone
Optional:
    - balance
    - display_name
    - port
    - stickiness
    - vrack_network_id
    - probe (block):
        - force_ssl (optional)
        - interval (optional)
        - match (optional)
        - method (optional)
        - negate (optional)
        - pattern (optional)
        - port (optional)
        - type (required)
        - url (optional)
EOT

  type = map(object({
    service_name     = string
    zone             = string
    balance          = optional(string)
    display_name     = optional(string)
    port             = optional(number)
    stickiness       = optional(string)
    vrack_network_id = optional(number)
    probe = optional(object({
      force_ssl = optional(bool)
      interval  = optional(number)
      match     = optional(string)
      method    = optional(string)
      negate    = optional(bool)
      pattern   = optional(string)
      port      = optional(number)
      type      = string
      url       = optional(string)
    }))
  }))
}

