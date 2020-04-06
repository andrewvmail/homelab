variable "esxi_hostname" {}
variable "esxi_hostport" {}
variable "esxi_username" {}
variable "esxi_password" {}


terraform {
  required_version = ">= 0.12"
}

provider "esxi" {
  esxi_hostname  = var.esxi_hostname
  esxi_hostport  = var.esxi_hostport
  esxi_username  = var.esxi_username
  esxi_password  = var.esxi_password
}

resource "esxi_guest" "rancher" {
  guest_name         = "rancher"
  disk_store         = "datastore1"
  clone_from_vm      = "deb"
  network_interfaces {
    virtual_network = "VM Network"
    nic_type = "vmxnet3"
  }
}

resource "esxi_guest" "rancher1" {
  guest_name         = "rancher1"
  disk_store         = "datastore1"
  clone_from_vm      = "deb"
  network_interfaces {
    virtual_network = "VM Network"
    nic_type = "vmxnet3"
  }
}

resource "esxi_guest" "rancher2" {
  guest_name         = "rancher2"
  disk_store         = "datastore1"
  clone_from_vm      = "deb"
  network_interfaces {
    virtual_network = "VM Network"
    nic_type = "vmxnet3"
  }
}

resource "esxi_guest" "rancher3" {
  guest_name         = "rancher3"
  disk_store         = "datastore1"
  clone_from_vm      = "deb"
  network_interfaces {
    virtual_network = "VM Network"
    nic_type = "vmxnet3"
  }
}