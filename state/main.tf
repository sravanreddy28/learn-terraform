terraform {
  backend "s3" {
    bucket = "sdevops-28"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "sravan"
}
output "hello" {
  value = var.test
}