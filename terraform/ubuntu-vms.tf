locals {
  ubuntu_vms = {
    "k3s-01" = {
      target_node  = "pve-r7"
      vm_desc      = "K3s production server"
      vmid         = 221
      memory       = 4096
      cores        = 2
      ip_address   = "10.0.10.221"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_prod_server"]
    },
    "k3s-02" = {
      target_node  = "pve-r7"
      vm_desc      = "K3s production agent"
      vmid =         222
      memory       = 8192
      cores        = 4
      ip_address   = "10.0.10.222"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_prod_agent"]
    },
    "k3s-03" = {
      target_node  = "pve-r7"
      vm_desc      = "K3s production agent"
      vmid =         223
      memory       = 8192
      cores        = 4
      ip_address   = "10.0.10.223"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_prod_agent"]
    }
  }
}
