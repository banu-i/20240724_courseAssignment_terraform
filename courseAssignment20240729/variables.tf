variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "eu-central-1"
}
variable "vpc_name" {
  description = "The name of the vpc"
  default     = "MyVpc"
}
# variable "vpc_ami" {
#   description = "The AMI ID for the instances in the VPC"
#   default     = "ami-071878317c449ae48"
# }

# variable "instance_type" {
#   description = "The type of instance to use"
#   default     = "t2.micro"
# }

# variable "subnet_id" {
#   description = "The subnet ID to deploy the instances in"
#   default     = "subnetEXAMPLE"
# }

# variable "key_name" {
#   description = "The name of the key pair to use for the instances"
#   default     = "my-instance-1_key"
# }