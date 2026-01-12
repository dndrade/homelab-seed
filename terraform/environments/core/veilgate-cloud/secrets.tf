data "sops_file" "common" {
  source_file = "${path.module}/../../../../secrets/common.sops.yaml"
}

locals {
  host_name = data.sops_file.common.data["cloud.host_name"]
  host_ip   = data.sops_file.common.data["cloud.host_ip"]
  ssh_user  = data.sops_file.common.data["cloud.ssh_user"]
  ssh_key_path = data.sops_file.common.data["cloud.ssh_key_path"]
}
