locals {
  git_log_path     = "${var.path}/.git/logs/HEAD"
  git_log_contents = fileexists(local.git_log_path) ? chomp(file(local.git_log_path)) : ""
  last_line        = fileexists(local.git_log_path) ? regex(".*\\z", local.git_log_contents) : ""
  last_line_tokens = fileexists(local.git_log_path) ? split(" ", local.last_line) : []
  hash             = fileexists(local.git_log_path) ? local.last_line_tokens[1] : var.fallback
}
