output "private_key_file" {
  description = "Private Key"
  value       = "${openstack_compute_keypair_v2.generated_keypair.*.private_key}"
}

output "public_key_file" {
  description = "Public Key"
  value       = "${openstack_compute_keypair_v2.provided_public_key.*.public_key}"
}