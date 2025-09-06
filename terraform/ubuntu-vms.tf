locals {
  ubuntu_vms = {
    "nomad-01" = {
      target_node  = "pve-r7"
      vm_desc      = "HCP Nomad node"
      ip_address   = "10.0.10.220"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "nomad"]
    }
  }
}
