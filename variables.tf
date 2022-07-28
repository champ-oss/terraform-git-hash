variable "path" {
  description = "Location of a directory containing a .git folder"
  type        = string
  default     = path.root
}

variable "fallback" {
  description = "Value to return if a git log does not exist"
  type        = string
  default     = "latest"
}
