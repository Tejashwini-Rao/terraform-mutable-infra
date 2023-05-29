module "vpc"{
  source ="./vendor/modules/vpc/"
  cidr_block = var.vpc_cidr_block
  subnets = var.subnets
  env= var.env
  az=var.az
}