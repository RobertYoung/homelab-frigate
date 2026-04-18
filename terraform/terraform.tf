terraform {
  backend "s3" {
    bucket = "terraform-iamrobertyoung"
    key    = "projects/homelab-frigate/main/tfstate.json"
    region = "eu-west-1"
  }
}
