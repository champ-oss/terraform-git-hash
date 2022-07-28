module "this" {
  source = "../../"
  path   = path.module
}

output "hash" {
  value = module.this.hash
}