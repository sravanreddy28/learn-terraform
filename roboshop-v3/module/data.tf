data "aws_ami" "ami"{
  most_recent = true
  name_regex = "centos_8-DevOps_practice"
  owners = ["538836650289"]
}