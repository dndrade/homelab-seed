# ==========================================
#               Outputs
# ==========================================

output "inventory_path" {
  description = "Path to the generated Ansible inventory"
  value       = module.inventory_export.inventory_path
}
