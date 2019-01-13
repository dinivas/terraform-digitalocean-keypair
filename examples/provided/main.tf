module "provided_keypair" {
  source = "../../"
  name = "provided-keypair"
  generate_ssh_key = false
  public_key_file = "./test.key.pub"
}