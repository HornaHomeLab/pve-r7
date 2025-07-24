terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
  backend "http" {
    address = "http://10.0.10.11:8001/state/pve-r7/prod"
  }
}
data "terraform_remote_state" "foo" {
  backend = "http"
  config = {
    address = "http://10.0.10.11:8001/state/pve-r7/prod"
  }
}

provider "proxmox" {
  pm_api_url          = data.vault_generic_secret.pve_creds.data["proxmox_api_url"]
  pm_api_token_id     = data.vault_generic_secret.pve_creds.data["proxmox_api_token_id"]
  pm_api_token_secret = data.vault_generic_secret.pve_creds.data["proxmox_api_token_secret"]
  pm_tls_insecure     = true
}

