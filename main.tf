provider "aws" {
#   hier kommen die interesaanten Werte
region = "eu-central-1"
}
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "tolle-ec2" {
  instance_type =  "t2.micro"
  ami = "ami-071878317c449ae48"
  vpc_security_group_ids =  ["sg-0e703645fb1ff55b7"]
  key_name = "my-instance-1_key"
}