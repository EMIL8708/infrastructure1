# Pulls VPC information
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "moldoisa"

    workspaces = {
      name = "vpc"
    }
  }
}

# Pulls DB information
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "moldoisa"

    workspaces = {
      name = "rds"
    }
  }
}