data "terraform_remote_state" "this" {
  backend = "remote"

  config = {
    organization = "moldoisa"

    workspaces = {
      name = "vpc"
    }
  }
}