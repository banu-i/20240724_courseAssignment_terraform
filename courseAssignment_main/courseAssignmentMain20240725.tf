provider "aws" {
region = "eu-central-1"
}

resource "aws_security_group" "allow_ssh_http_https_egress" {
  name = "allow_ssh_http_https"
  
  # Regel für ausgehenden Datenverkehr hinzufügen
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# Security Group erstellen, die SSH über IPv4 (überall) erlaubt
resource "aws_security_group" "allow_ssh_http_https" {
  
}
resource "aws_security_group_rule" "ingress_ssh" {
  from_port = 22
  to_port = 22
  security_group_id = aws_security_group.allow_ssh_http_https.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "ingress_http" {
  from_port = 80
  to_port = 80
  security_group_id = aws_security_group.allow_ssh_http_https.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "ingress_https" {
  from_port = 443
  to_port = 443
  security_group_id = aws_security_group.allow_ssh_http_https.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_instance" "coursAssignment" {
  instance_type =  "t2.micro"
  tags = {
    Name = "Franzrbrötchen"  }
# vpc_security_group_ids =  ["sg-0e703645fb1ff55b7"]
  vpc_security_group_ids =  [aws_security_group.allow_ssh_http_https.id]

  ami = "ami-071878317c449ae48"
  key_name = "my-instance-1_key"
  
}
output "coursAssignment_output_ip" {
  value = aws_instance.coursAssignment.public_ip
}

output "aws_security_group_name" {
  value = aws_security_group.allow_ssh_http_https.name
}

output "aws_security_group_rule_ssh" {
  value = aws_security_group_rule.ingress_ssh
}

output "aws_security_group_rule_http" {
  value = aws_security_group_rule.ingress_http
}

output "aws_security_group_rule_https" {
  value = aws_security_group_rule.ingress_https
}

output "aws_security_group_egress_rule" {
  value = aws_security_group.allow_ssh_http_https_egress.id
}