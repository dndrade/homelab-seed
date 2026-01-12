# ==========================================
#            Ansible
# ==========================================

variable "ansible_groups" {
  description = "Ansible inventory groups"
  type        = list(string)
  default     = []
}

variable "ansible_become" {
  description = "Whether Ansible should use sudo"
  type        = bool
  default     = true
}

variable "repo_root" {
  description = "Absolute path to the repository root"
  type        = string
}
