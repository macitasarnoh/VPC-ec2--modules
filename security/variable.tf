# security/variables

variable "ingressrule" {
  type = list(number)
  #default = [ 22, 22 ]
}

variable "egressrule" {
  type = list(number)
  #default = [ 0, 0 ]
}

variable "vpc_id" {
  
}
