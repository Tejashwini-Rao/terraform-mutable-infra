vpc_cidr_block="10.100.0.0/16"
subnets = {
  public = {
    name        = "public"
    subnet_cidr = [10.100.0.0/24, 10.100.1.0/24]
    igw= true

  }
  app_private = {
    name        = "app-private"
    subnet_cidr = [10.100.2.0/24, 10.100.3.0/24]
    ngw = true

  }
  db_private = {
    name        = "db-private"
    subnet_cidr = [10.100.4.0/24, 10.100.5.0/24]
    ngw = true

  }
}

env= "dev"
az= ["us-east-1a","us-east-1b"]
