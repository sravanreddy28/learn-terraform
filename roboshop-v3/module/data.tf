data "aws_ami" "ami"{
  most_recent = true
  name_regex = "Centos-8-DevOps_Practice"
  owners = ["973714476881"]
}