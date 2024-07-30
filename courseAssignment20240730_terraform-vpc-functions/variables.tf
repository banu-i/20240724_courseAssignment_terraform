variable "region" {
  description = "AWS Region"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR Block für die VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Liste der CIDR Blöcke für öffentliche Subnetze"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
}

variable "private_subnets" {
  description = "Liste der CIDR-Blöcke für private Subnetze"
  type        = list(string)
  default     = ["10.0.2.0/24", "10.0.4.0/24", "10.0.6.0/24"]
}
# Weitere Variablen für private Subnetze, AZs, etc.