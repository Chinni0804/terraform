terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "s3" {
    bucket = "terraform-remote5"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}





provider "aws" {
  # Configuration options
  region  = "us-east-1"
}