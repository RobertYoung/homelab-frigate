provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      Project     = "homelab-frigate"
      ManagedBy   = "Terraform"
      Environment = "production"
    }
  }
}
