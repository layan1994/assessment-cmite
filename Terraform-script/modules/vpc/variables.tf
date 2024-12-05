variable "project_id" {}
variable "region" {
  default = "us-central1"
}
variable "vpc_name" {
  default = "my-vpc"
}
variable "subnet_name" {
  default = "my-subnet"
}
variable "subnet_cidr" {
  default = "10.0.0.0/24"
}
