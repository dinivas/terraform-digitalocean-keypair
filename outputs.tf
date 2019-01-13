output "private_key_file" {
  description = "Private Key"
  value       = "${openstack_compute_keypair_v2.this.*.private_key}"
}

output "public_key_file" {
  description = "Public Key"
  value       = "${openstack_compute_keypair_v2.this_provided.*.public_key}"
}