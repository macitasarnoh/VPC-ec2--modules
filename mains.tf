terraform {
  backend "s3" {
    bucket = "mamabear"
    key    = "daoc.tfstate"
    region = "us-east-1"
    # dynamodb_table = "mytable"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "EC2" {
  source          = "./ec2"
  ami_id          = "ami-033b95fb8079dc481"
  instance_type   = "t2.micro"
  subnet_id = module.vpc.subnet
  sg = module.sg.ec2SG
  tags = "myec2"

}


module "vpc" {
  source           = "./vpc"
  vpc_cidr         = "10.0.0.0/16"
  aws_subnet_cidr  = "10.0.0.0/24"
  aws_subnet_cidr2 = "10.0.1.0/24"
  tags_name        = "tom"
  tags_name2       = "tom2"
  tags_name3 = "masseta"

}

module "sg" {
    source = "./security"
    vpc_id = module.vpc.myvpc
    ingressrule = [22,22]
    egressrule = [0,0]


  
}

