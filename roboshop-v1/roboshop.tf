variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ea14648eaf6add85"]
}

variable "zone_id" {
  default = "Z05383332D04XQ1MILNHI"
}


variable "component" {
  default = {
    frontend = {name = "frontend-dev"}
    mongodb  = {name = "mongodb-dev"}
    catalogue = {name = "catalogue-dev"}
    redis = {name = "redis-dev"}
    user = {name = "user-dev"}
    cart = {name = "cart-dev"}
    mysql = {name = "mysql-dev"}
    shipping = {name = "shipping-dev"}
    rabbitmq = {name = "rabbitmq-dev"}
    payment = {name = "payment-dev"}

  }
}

resource "aws_instance" "instance" {
  for_each = var.component
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value,"name",null )
  }
}
resource "aws_route53_record" "record" {
for_each  = var.component
  zone_id = var.zone_id
  name    = lookup(each.value,"name",null)
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key,null),private_ip,null)]
  allow_overwrite = true
}
