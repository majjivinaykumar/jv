#resource-keyword   resource   resource-name 
#resource-name is just to identify the resource block in terraform but not the resource in console

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source    = "/home/ubuntu/terraform/vpc"
  cidrblock = "10.245.0.0/20"
  vpcname   = "edo config"
}

module "subnet" {
  source            = "/home/ubuntu/terraform/subnet"
  subnet-cidr-block = ["10.245.0.0/21", "10.245.8.0/21"]
  subnet-name       = ["edo public subnet", "edo private subnet"]
  vpc-id            = module.vpc.vpc-id

}

module "ig" {
  source = "/home/ubuntu/terraform/ig"
  vpc-id = module.vpc.vpc-id
}

module "rt" {
  source     = "/home/ubuntu/terraform/rt"
  vpc-id     = module.vpc.vpc-id
  gateway-id = module.ig.gatewayid
  cidr-block = ["192.168.0.104/32", "0.0.0.0/0"]
  #subnet-id  = ""
}