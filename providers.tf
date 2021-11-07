# --- s3/providers.tf ---
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}