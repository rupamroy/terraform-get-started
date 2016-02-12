variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}

variable "amis" {
  default = {
  }
}

output "ami" {
  value = "${lookup(var.amis, var.region)}"
}