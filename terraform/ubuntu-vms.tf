locals {
  ubuntu_vms = {
    "k3s-server-test" = {
      target_node  = "pve-r7"
      vm_desc      = "test k3s server"
      ip_address   = "10.0.10.220"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_dev_server"]
    }
    "k3s-agent1-test" = {
      target_node  = "pve-r7"
      vm_desc      = "test k3s agent"
      ip_address   = "10.0.10.221"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_dev_agent"]
    }
    "k3s-agent2-test" = {
      target_node  = "pve-r7"
      vm_desc      = "test k3s agent"
      ip_address   = "10.0.10.222"
      cidr_netmask = "24"
      gateway      = "10.0.10.1"
      dns_servers  = ["10.0.10.11", "1.1.1.1"]
      tags         = ["ubuntu", "k3s_cluster_dev_agent"]
    }
  }
}
