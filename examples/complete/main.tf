module "this" {
  source = "../../"
}

output "hash" {
  value = module.this.hash
}