data "harvester_network" "vlan" {
  name      = var.vlan_name
  namespace = var.lan_ns
}
data "harvester_image" "image" {
  name      = var.image_name
  namespace = var.iso_ns
}
