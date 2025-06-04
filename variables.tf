variable "location" {
  description = "Azure location"
  type        = string
  default     = "westeurope"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "pg_admin_password" {
  sensitive = true
}
