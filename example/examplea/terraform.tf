terraform {
  required_providers {
    aws = {
      version = "5.13.1"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.3.5"
}
