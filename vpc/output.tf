output "myvpc" {
  value = aws_vpc.project3.id

}
output "subnet" {
  value = aws_subnet.project1.id

}
output "subnet2" {
  value = aws_subnet.project2.arn

}