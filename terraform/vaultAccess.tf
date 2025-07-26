provider "vault" {
  address = var.vault_url

  # AppRole authentication
  auth_login {
    path = "auth/approle/login"
    parameters = {
      role_id   = var.vault_role_id
      secret_id = var.vault_secret
    }
  }
}

data "vault_generic_secret" "pve_creds" {
  path = "infrastructure/Proxmox_Cluster"
}
