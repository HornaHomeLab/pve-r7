locals {
  ubuntu_vms = {
    "hcp-01" = {
      target_node  = "pve-r7"
      vm_desc      = "HCP Nomad node"
      ip_address   = "10.0.10.221"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "nomad"]
    },
    "hcp-02" = {
      target_node  = "pve-r7"
      vm_desc      = "HCP Nomad node"
      ip_address   = "10.0.10.222"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "nomad"]
    },
    "hcp-03" = {
      target_node  = "pve-r7"
      vm_desc      = "HCP Nomad node"
      ip_address   = "10.0.10.223"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "nomad"]
    }
  }
}
