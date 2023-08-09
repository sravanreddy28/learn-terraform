data "aws_ami" "ami"{
  most_recent = true
  name_regex = "centos_8-DevOps_practice"
  owners = ["973714476881"]
}