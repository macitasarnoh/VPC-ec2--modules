# variables for EC2

variable "ami_id" {
  #default = "ami-033b95fb8079dc481"

  type = string

}

variable "instance_type" {
  #default = "t2.micro"
  type = string
}
variable "tags" {
  #default = "my ec2"

}

variable "subnet_id" {
  
}

variable "sg" {
  
}
