module "generated_keypair" {
  source = "../../"
  name = "generated-keypair"
  generate_ssh_key = true
}