terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  # Configure Terragrunt to use DynamoDB for locking
  lock {
    backend = "dynamodb"
    config {
      state_file_id = "override"
    }
  }
}
