output "public_key" {
  description = "Public Key"
  value       = "${module.provided_keypair.public_key_file}"
}