# ======================== INFRAESTRUCTURA FIJA ========================
# Reducido y modularizado pero tomado de: https://developer.hashicorp.com/terraform/tutorials/aws/rds-upgrade

# module "network_lite" {
#   source        = "./modules/network-lite"
#   cidr_vpc      = var.cidr_vpc
#   zone_1        = var.aws_zone_1
#   cidr_subnet_1 = var.cidr_subnet_1
#   zone_2        = var.aws_zone_2
#   cidr_subnet_2 = var.cidr_subnet_2
#   app_name      = var.app_name
# }

module "network" {
  source   = "./modules/network"
  app_name = var.app_name
}

module "db" {
  source                 = "./modules/db"
  app_name               = var.app_name
  db_password            = var.db_password
  db_name                = var.db_name
  db_user                = var.db_user
  subnet_ids             = module.network.public_subnets
  vpc_security_group_ids = [module.network.security_group_id]
}

# ======================== INFRAESTRUCTURA EFIMERA ========================

module "beanstalk" {
  source             = "./modules/beanstalk"
  app_name           = var.app_name
  deployment_policy  = "AllAtOnce"
  vpc_id             = module.network.vpc_id
  subnet_ids         = module.network.private_subnets
  elb_subnet_ids     = module.network.public_subnets
  security_group_ids = [module.network.eb_security_group_id]
}
