output "database_host" {
  value       = aws_db_instance.db_instance.address
  description = "El host de la base de datos."
}

output "database_port" {
  value       = aws_db_instance.db_instance.port
  description = "El puerto de la base de datos."
}
