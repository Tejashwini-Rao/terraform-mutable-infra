locals {
  apps_subnets_ids   = module.vpc.subnets["apps"].subnet_ids
  db_subnets_ids     = module.vpc.subnets["db"].subnet_ids
  public_subnets_ids = module.vpc.subnets["public"].subnet_ids
}