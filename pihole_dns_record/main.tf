terraform {
  required_providers {
    pihole = {
      source = "ryanwholey/pihole"
    }
  }
}

resource "pihole_dns_record" "record" {
  domain = var.domain
  ip     = var.ip
}
