output "inventory_path" {
  description = "Generated inventory file path"
  value       = local_file.inventory.filename
}
