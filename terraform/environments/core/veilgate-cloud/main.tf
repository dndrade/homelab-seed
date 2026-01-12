# ==========================================
#        Existing hosts
# ==========================================

terraform {
  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "~> 1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.6"
    }
  }
}

locals {
  repo_root = abspath("${path.root}/../../../")
}


module "inventory_export" {
  source = "../../../modules/inventory_export"

  inventory_path = "${var.repo_root}/ansible/inventories/hosts.yml"
  
  host_name      = local.host_name
  host_ip        = local.host_ip
  ssh_user       = local.ssh_user
  ssh_key_path   = local.ssh_key_path
  groups         = ["core"]

  ansible_become  = true
}
