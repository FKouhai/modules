terraform {
  required_version = ">=0.13"
  required_providers {
    harvester = {
      source  = "harvester/harvester"
      version = "0.6.4"
    }
  }
}

resource "harvester_virtualmachine" "vm" {
  name        = var.vm_name
  cpu         = var.cpu
  memory      = var.ram
  efi         = var.efi
  secure_boot = var.secure_boot

  network_interface {
    name         = var.nic_name
    network_name = data.harvester_network.vlan.id
  }

  disk {
    name        = "cdrom-disk"
    type        = "cd-rom"
    size        = var.cd_size
    bus         = "sata"
    boot_order  = 2
    image       = data.harvester_image.image.id
    auto_delete = true
  }

  disk {
    name       = var.disk_name
    type       = "disk"
    size       = var.disk_size
    bus        = var.disk_bus
    boot_order = 1
  }

}
