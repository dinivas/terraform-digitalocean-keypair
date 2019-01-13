variable "name" {
  type        = "string"
  description = "KeyPair name to create"
}

variable "public_key_file" {
  type        = "string"
  default = ""
  description = "Path to SSH public key directory (e.g. `/secrets`)"
}

variable "generate_ssh_key" {
  default     = "false"
  description = "If set to `true`, new SSH key pair will be created"
}