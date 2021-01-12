resource "random_pet" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "animal2" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

output "random" {
  value = "${random_pet.animal.id}"
}

output "random2" {
  value = "${random_pet.animal2.id}"
}

# That's it! That's the joke.
