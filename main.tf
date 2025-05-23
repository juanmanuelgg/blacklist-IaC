module "db" {
  source      = "./modules/db"
  db_password = var.db_password
  db_name     = var.db_name
  db_user     = var.db_user
}
