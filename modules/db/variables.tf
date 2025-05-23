variable "app_name" {
  type        = string
  description = "Nombre del microservicio"
}

variable "db_name" {
  type        = string
  description = "Nombre de la base de datos"
}

variable "db_user" {
  type        = string
  description = "Usuario de la base de datos"
}

variable "db_password" {
  type        = string
  description = "Contraseña de la base de datos"
  sensitive   = true
}

variable "subnet_ids" {
  type        = set(string)
  description = "IDs de subredes para la base de datos"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Lista de IDs de grupos de seguridad para la base de datos"
}
