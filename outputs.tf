output "id" {
  description = "SSH Key id"
  value       = digitalocean_ssh_key.this.id
}
output "name" {
  description = "SSH Key name"
  value       = digitalocean_ssh_key.this.name
}

output "public_key" {
  description = "Public Key"
  value       = digitalocean_ssh_key.this.public_key
}

output "fingerprint" {
  description = "SSH Fingerprint"
  value       = digitalocean_ssh_key.this.fingerprint
}
