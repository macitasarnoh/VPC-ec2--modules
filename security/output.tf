# SECURITY output


output "ec2SG" {
  value = aws_security_group.ssh-security-group.id

}
output "sgarn" {
  value = aws_security_group.ssh-security-group.arn

}