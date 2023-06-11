## VPC
vpc_cidr_block = "10.100.0.0/16"
subnets = {
  public = {
    name        = "public"
    subnet_cidr = ["10.100.0.0/24", "10.100.1.0/24"]
    igw         = true
  }
  apps = {
    name        = "apps"
    subnet_cidr = ["10.100.2.0/24", "10.100.3.0/24"]
    ngw         = true
  }
  db = {
    name        = "db"
    subnet_cidr = ["10.100.4.0/24", "10.100.5.0/24"]
    ngw         = true
  }
}

env                    = "dev"
AZ                     = ["us-east-1a", "us-east-1b"]
default_vpc_id         = "vpc-0615ecd76b6d3e88a"
default_vpc_cidr       = "172.31.0.0/16"
default_route_table_id = "rtb-0926f0e4e09c52838"

##DOCDB

engine=docdb


#RDS
rds_engine_version = 5.7.mysql_aurora.2.03.2

#elastic cache
