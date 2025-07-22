module "ubuntu_vm" {
  source            = "github.com/HornaHomeLab/Terraform_Modules/ubuntu-vm"
  target_node       = "pve-r7"
  hcp_vault_role_id = var.vault_role_id
  hcp_vault_secret  = var.vault_secret

  for_each = local.ubuntu_vms

  vm_name      = each.key
  vm_desc      = lookup(each.value, "vm_desc", null)
  vmid         = lookup(each.value, "vmid", null)
  tags         = lookup(each.value, "tags", null)
  cores        = lookup(each.value, "cores", 4)
  memory       = lookup(each.value, "memory", 4096)
  disk_size    = lookup(each.value, "disk_size", "64G")
  ip_address   = lookup(each.value, "ip_address", null)
  cidr_netmask = lookup(each.value, "cidr_netmask", null)
  gateway      = lookup(each.value, "gateway", null)
  dns_servers  = lookup(each.value, "dns_servers", ["1.1.1.1"])
}
