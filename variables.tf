variable "name" {
  type        = string
  description = "KeyPair name to create"
}

variable "public_key" {
  type        = string
  default     = ""
  description = "Public key: It should be the content of the public key"
}
