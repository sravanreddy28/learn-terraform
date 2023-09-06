resource "aws_instance" "instance" {
  ami                       = data.aws_ami.ami.id
  instance_type             = "t2.micro"
  vpc_security_group_ids    = ["sg-0ea14648eaf6add85"]

  tags = {
    Name = "monitoring1"
  }

}

#resource "aws_route53_record" "record" {
#
#  zone_id = var.zone_id
#  name    = "${var.name}-dev.sdevops28.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.instance.private_ip]
#
#}

#resource "null_resource" "ansible" {
#
#  depends_on = [
#    aws_route53_record.record
#  ]
#
#  provisioner "local-exec" {
#    command = <<EOF
#cd/home/centos/roboshop_ansible
#git pull
#ansible-playbook -i ${var.name}-dev.sdevops28.online, main.yml -e ansible_user=centos -e ansible_password=DevOps321 ${var.name}
#EOF
#  }
#}
