module "this" {
  source = "../../"
  path   = path.module
}

output "hash" {
  description = "SHA1 commit hash of the targeted repository's HEAD ref"
  value = module.this.hash
}
