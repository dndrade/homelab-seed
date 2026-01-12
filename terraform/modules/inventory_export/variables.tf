# ==========================================
#           Inventory inputs
# ==========================================

variable "host_name" {
  description = "Logical hostname identifier for the managed host"
  type        = string
}

variable "host_ip" {
  description = "IP address Ansible will connect to"
  type        = string
}

variable "ssh_user" {
  description = "SSH user Ansible will use for connections"
  type        = string
}

variable "groups" {
  description = "Ansible inventory groups this host belongs to"
  type        = list(string)
  default     = []
}

variable "ansible_become" {
  description = "Whether Ansible should use privilege escalation (sudo)"
  type        = bool
  default     = true
}

variable "inventory_path" {
  description = "Filesystem path where the rendered Ansible inventory will be written"
  type        = string
}

variable "ssh_key_path" {
  description = "Path to SSH private key Ansible should use"
  type        = string
  default     = null
}
