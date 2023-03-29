module "this" {
  source = "../../"
  path   = path.module
}
  
module "this2" {
  source = "../../"
  path   = path.module
}

output "hash" {
  value = module.this.hash
}

output "hash2" {
  value = module.this2.hash
}
