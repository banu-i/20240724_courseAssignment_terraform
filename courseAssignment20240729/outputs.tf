output "vpc_id" {
  description = "Die ID vom VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_1_id" {
  description = "Die ID vom first public subnet"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "Die ID vom second public subnet"
  value       = aws_subnet.public_subnet_2.id
}

output "private_subnet_1_id" {
  description = "Die ID vom first private subnet"
  value       = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  description = "Die ID vom second private subnet"
  value       = aws_subnet.private_subnet_2.id
}

output "internet_gateway_id" {
  description = "Die ID vom Internet Gateway"
  value       = aws_internet_gateway.my_igw.id
}

output "public_route_table_id" {
  description = "Die ID vom public route table"
  value       = aws_route_table.public_route_table.id
}