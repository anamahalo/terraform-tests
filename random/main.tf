resource "random_pet" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

output "random" {
  value = "${random_pet.animal.id}"
}

# That's it! That's the joke.

terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    organization = "rcarchivist"

  workspaces {
    name = "terraform-tests"
  }
 }
}
