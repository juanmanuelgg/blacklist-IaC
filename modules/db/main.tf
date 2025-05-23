resource "aws_db_subnet_group" "db_subnet_group" {
  name        = "db-subnet-group-${var.app_name}"
  description = "DB Subnet Group for ${var.app_name}"
  subnet_ids  = var.subnet_ids
}

resource "aws_db_parameter_group" "db_parameter_group" {
  name_prefix = "db-parameter-group-${var.app_name}"
  family      = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_db_instance" "db_instance" {
  identifier                  = "db-${var.app_name}"
  allocated_storage           = 20            # Free tier
  instance_class              = "db.t3.micro" # Free tier
  apply_immediately           = true
  engine                      = "postgres"
  engine_version              = "15"
  username                    = var.db_user
  password                    = var.db_password
  db_name                     = var.db_name
  allow_major_version_upgrade = true
  db_subnet_group_name        = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids      = var.vpc_security_group_ids
  parameter_group_name        = aws_db_parameter_group.db_parameter_group.name
  publicly_accessible         = true
  skip_final_snapshot         = true
  backup_retention_period     = 1
}
