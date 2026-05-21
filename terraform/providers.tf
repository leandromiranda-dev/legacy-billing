terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "legacy-billing-miranda-123" 
    key    = "legacy-billing/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}