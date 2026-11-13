locals {
  path             = var.path == null ? path.root : var.path
  git_log_path     = "${local.path}/.git/logs/HEAD"
  git_log_contents = fileexists(local.git_log_path) ? chomp(file(local.git_log_path)) : ""
  last_line        = fileexists(local.git_log_path) ? regex(".*\\z", local.git_log_contents) : ""
  last_line_tokens = fileexists(local.git_log_path) ? split(" ", local.last_line) : []
  hash             = fileexists(local.git_log_path) ? local.last_line_tokens[1] : var.fallback
}

data "external" "tree_hash" {
  count = var.enable_tree_hash ? 1 : 0

  program = [
    "sh", "-c",
    "h=$(git -C \"$1\" rev-parse 'HEAD^{tree}' 2>/dev/null) || h=\"$2\"; printf '{\"tree_hash\":\"%s\"}' \"$h\"",
    "sh", local.path, var.fallback,
  ]
}
