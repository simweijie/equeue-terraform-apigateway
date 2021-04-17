terraform {
  backend "s3" {
    bucket = "nus-iss-equeue-terraform"
    key    = "api-gateway/tfstate"
    region = "us-east-1"
  }
}