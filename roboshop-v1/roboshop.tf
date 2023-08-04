variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ea14648eaf6add85"]
}

variable "component" {
  default = {
    frontend = {}
    mongodb  = {}
    catalogue = {}
    redis = {}
    user = {}
    cart = {}
    mysql = {}
    shipping = {}
    rabbitmq = {}
    payment = {}

  }
}

resource "aws_instance" "instance" {
  for_each = var.component
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.component
  }
}
#resource "aws_route53_record" "record" {
#for_each  = var.component
#  zone_id = "Z05383332D04XQ1MILNHI"
#  name    = "frontend-dev.sdevops28.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}
