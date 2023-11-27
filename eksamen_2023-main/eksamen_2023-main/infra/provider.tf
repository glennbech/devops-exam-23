terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.39.0"
    }
  }
  backend "s3" {
    bucket = "kandidat2005bucket"
    key    = "2005/apprunner.state"
    region = "eu-west-1"
  }
}