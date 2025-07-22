variable "vault_url" {
  type        = string
  description = "HashiCorp Vault URL"
  default     = "https://vault.horna.local"
}
variable "vault_role_id" {
  type        = string
  description = "Vault AppRole Role ID"
  sensitive   = true
}
variable "vault_secret" {
  type        = string
  description = "Vault AppRole Secret ID"
  sensitive   = true
}
