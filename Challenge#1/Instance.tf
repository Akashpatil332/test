resource "aws_instance" "web" {
  ami             = "${lookup(var.AMIS, var.aws_region)}"
  instance_type   = "t2.micro"

  subnet_id       = aws_subnet.public_subnet.id
  security_groups = aws_security_group.allow_ssh.id

  user_data = <<-EOF
  #!/bin/bash
  echo "Hosting apache web service"
  sudo yum update -y
  sudo yum install apache -y
  echo "apache web service has been installed"
  EOF
}