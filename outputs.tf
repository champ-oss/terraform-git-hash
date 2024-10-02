output "hash" {
  description = "SHA1 commit hash of the targeted repository's HEAD ref"
  value       = var.enabled ? local.hash : ""
}
