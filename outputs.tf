output "hash" {
  description = "SHA1 commit hash of the targeted repository's HEAD ref"
  value       = local.hash
}

output "tree_hash" {
  description = "SHA1 git tree hash of the targeted repository's HEAD commit. Identical for commits with identical files."
  value       = var.enable_tree_hash ? data.external.tree_hash[0].result.tree_hash : null
}
