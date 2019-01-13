locals {
  private_key_filename = "${format("%s.%s", var.name, "key")}"
}

resource "openstack_compute_keypair_v2" "this" {
  count      = "${var.generate_ssh_key}"
  name = "${var.name}"
}

resource "openstack_compute_keypair_v2" "this_provided" {
  count      = "${1 - var.generate_ssh_key}"

  name = "${var.name}"
  public_key = "${file("${var.public_key_file}")}"
}

resource "local_file" "private_key_pem" {
  count      = "${1 - var.generate_ssh_key}"

  depends_on = ["openstack_compute_keypair_v2.this_provided"]
  content    = "${openstack_compute_keypair_v2.this_provided.private_key}"
  filename   = "${local.private_key_filename}"
}