
variable "integration_name" {
  type        = string
  description = "Name of integration with AWS"
}


variable "blueprint_name" {
  type        = string
  description = "Name of blueprint for project"
}

variable "blueprint_grid" {
  default     = "standard"
  type        = string
  description = "blueprint size"
}
