terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = ">= 2.0.0"
    }
  }
}

module "this" {
  source = "../../"
  path   = path.module
}

output "hash" {
  description = "SHA1 commit hash of the targeted repository's HEAD ref"
  value       = module.this.hash
}
