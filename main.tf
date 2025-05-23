# ======================== INFRAESTRUCTURA FIJA ========================
# Reducido y modularizado pero tomado de: https://developer.hashicorp.com/terraform/tutorials/aws/rds-upgrade

module "network_lite" {
  source        = "./modules/network-lite"
  cidr_vpc      = var.cidr_vpc
  zone_1        = var.aws_zone_1
  cidr_subnet_1 = var.cidr_subnet_1
  zone_2        = var.aws_zone_2
  cidr_subnet_2 = var.cidr_subnet_2
  app_name      = var.app_name
}

module "db" {
  source      = "./modules/db"
  app_name    = var.app_name
  db_password = var.db_password
  db_name     = var.db_name
  db_user     = var.db_user
  subnet_ids = toset([
    module.network_lite.subnet_public_1_id,
    module.network_lite.subnet_public_2_id
  ])
  vpc_security_group_ids = [module.network_lite.security_group_id]
}

# ======================== INFRAESTRUCTURA EFIMERA ========================
