variable "path" {
  description = "Location of a directory containing a .git folder"
  type        = string
  default     = null
}

variable "fallback" {
  description = "Value to return if a git log does not exist"
  type        = string
  default     = "latest"
}

variable "enable_tree_hash" {
  description = "Run git to look up the tree hash"
  type        = bool
  default     = true
}
