

module "ssh_keypair" {
  source     = "../../"
  name       = "dinivas-keypair"
  public_key = file("./test.key.pub")
}
