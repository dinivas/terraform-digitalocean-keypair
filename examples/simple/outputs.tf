output "name" {
  description = "SSH Key name"
  value       = module.ssh_keypair.name
}

output "public_key" {
  description = "SSH Public Key"
  value       = module.ssh_keypair.public_key
}

output "fingerprint" {
  description = "SSH Fingerprint"
  value       = module.ssh_keypair.fingerprint
}

