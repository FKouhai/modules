variable "vm_name" {
  default = "test_vm"
  type    = string
}
variable "cpu" {
  default = 4
  type    = number
}

variable "ram" {
  default = "4Gi"
  type    = string
}

variable "efi" {
  default = false
  type    = bool
}

variable "secure_boot" {
  default = false
  type    = bool
}

variable "nic_name" {
  default = "nic-1"
  type    = string
}

variable "vlan_name" {
  default = "vlan-1"
  type    = string
}

variable "lan_ns" {
  default = "default"
  type    = string
}

variable "cd_size" {
  default = "10Gi"
  type    = string
}

variable "image_name" {
  default = "my_image"
  type    = string
}

variable "iso_ns" {
  default = "default"
  type    = string
}

variable "disk_name" {
  default = "disk-0"
  type    = string
}

variable "disk_size" {
  default = "50Gi"
  type    = string
}

variable "disk_bus" {
  default = "virtio"
  type    = string

}
