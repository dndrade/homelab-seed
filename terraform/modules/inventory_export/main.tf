# ==========================================
#        Inventory file rendering
# ==========================================

resource "local_file" "inventory" {
  filename = var.inventory_path
  content = templatefile(
    "${path.module}/inventory.yml.tftpl",
    {
      host_name      = var.host_name
      host_ip        = var.host_ip
      ssh_user       = var.ssh_user
      ssh_key_path   = var.ssh_key_path
      ansible_become = var.ansible_become
      groups         = var.groups
    }
  )
}