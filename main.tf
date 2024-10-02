locals {
  path             = var.path == null ? path.root : try(var.path, "")
  git_log_path     = var.enabled ? "${local.path}/.git/logs/HEAD" : ""
  git_log_contents = var.enabled && fileexists(local.git_log_path) ? chomp(file(local.git_log_path)) : ""
  last_line        = var.enabled && fileexists(local.git_log_path) ? regex(".*\\z", local.git_log_contents) : ""
  last_line_tokens = var.enabled && fileexists(local.git_log_path) ? split(" ", local.last_line) : []
  hash             = var.enabled && fileexists(local.git_log_path) ? local.last_line_tokens[1] : var.fallback
}
