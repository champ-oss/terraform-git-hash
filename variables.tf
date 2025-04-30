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

variable "enabled" {
  description = "enable the module"
  type        = bool
  default     = true
}
