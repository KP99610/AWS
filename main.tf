terraform {
  backend "s3" {
    bucket         = "terraform-state-bhavana"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}