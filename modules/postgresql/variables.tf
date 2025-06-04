variable "environment" {}
variable "location" {}
variable "resource_group_name" {}
variable "admin_username" {
  default = "pgadmin"
}
variable "admin_password" {
  sensitive = true
}
variable "db_name" {
  default = "embeddings"
}
