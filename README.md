# pve-r7

This repository automates infrastructure provisioning and configuration for virtual machines (VMs)
on the `pve-r7` Proxmox VE node, leveraging the power of:

- Terraform - to provision and manage Proxmox virtual machines
- Ansible - to configure and manage the provisioned VMs

This repository targets a specific node within the Proxmox cluster (`pve-r7`) to ensure reliable execution,
as not all nodes are continuously available.
By focusing on a single node, the setup reduces the number of Ansible playbooks and Virtual Machines
that needs to be configured during each GitHub Actions run,
improving efficiency and minimizing unnecessary operations.

## CI/CD with GitHub Actions

All provisioning and configuration steps are automated via GitHub Actions,
using runners managed by GitHub.
The runner utilizes Tailscale to establish a secure connection to the self-hosted Proxmox cluster,
enabling seamless access and operations from within the CI workflow.

## Ansible Inventory Generation

The Ansible inventory is dynamically generated based on tags assigned to Proxmox VMs,
using custom [Terraform modules](https://github.com/StanislawHorna/Terraform)
This allows flexible and scalable configuration management by grouping and targeting VMs by role,
environment, or other metadata based on TF files only.

## Secrets Management with HashiCorp Vault

Both Terraform and Ansible interact with self-hosted HashiCorp Vault to retrieve necessary secrets at runtime:

- Each VM has its own unique password and SSH key pair stored in HCP Vault, used during provisioning and initial configuration.
- Secrets such as API credentials, access tokens, and other sensitive configuration details are securely fetched from Vault without exposing them in code or logs.

## Secure User Access via Vault SSH Secret Engine

User access to provisioned VMs is managed through HCP Vault’s SSH Secret Engine. Instead of distributing static SSH keys:

- Vault signs ephemeral SSH keys for users, allowing time-limited, audited, and policy-controlled SSH access to VMs.
- This approach increases security and simplifies key management across the virtual infrastructure.
