<!-- Beispiel:
ingress
resource "aws_security_group_rule" "ingress_http" {
  from_port = 80
  to_port = 80
  security_group_id = aws_security_group.allow_assignment1.id
  protocol = "tcp"
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}
und egress:
resource "aws_security_group_rule" "egress_all" {
  from_port = 0
  to_port = 0
  security_group_id = aws_security_group.allow_assignment1.id
  protocol = "-1"
  type = "egress"
  cidr_blocks = ["0.0.0.0/0"]
}
und da ist security_group_id fest
-->
