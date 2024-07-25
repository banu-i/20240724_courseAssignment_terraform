provider "aws" {
#   hier kommen die interesaanten Werte
region = "eu-central-1"
}
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "beispiel" {
  instance_type =  "t2.micro"
  #Instanz einen Namen-Tag für AWS-Management-Konsole geben
  tags = {
    Name = "Hallo-Welt"  }
# vpc_security_group_ids =  ["sg-0e703645fb1ff55b7"]
  vpc_security_group_ids =  [aws_security_group.allow_ssh.id]

  ami = "ami-071878317c449ae48"
  key_name = "my-instance-1_key"
  
}
# Instanz mit Security-Group verknüpfen

# Security Group erstellen, die SSH über IPv4 (überall) erlaubt
resource "aws_security_group" "allow_ssh" {
  
}
resource "aws_security_group_rule" "ingress_ssh" {
  from_port = 22
  to_port = 22
  security_group_id = aws_security_group.allow_ssh.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}
output "beispiel ip" {
  
}