# Las llaves estan vacia aqui pero tienen valor en terraform.tfvars (Archivo que debe meterse en el .gitignore)
# aws_access_key = "<my-access-key>"
# aws_secret_key = "<my-secret-key>"

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {
  type        = string
  description = "La region donde vamos a desplegar la infraestructura"
  default     = "us-east-2" # Ohio ping:92 ms
  nullable    = false
}

variable "cidr_vpc" {
  type        = string
  description = "Bloque CIDR para la VPC"
  default     = "10.0.0.0/16"
  nullable    = false
}

variable "aws_zone_1" {
  type        = string
  description = "La zona 1 donde vamos a desplegar la infraestructura"
  default     = "us-east-2a" # Ohio ping:92 ms
  nullable    = false
}

variable "cidr_subnet_1" {
  type        = string
  description = "Bloque CIDR para la subnet 1"
  default     = "10.0.4.0/24"
  nullable    = false
}

variable "aws_zone_2" {
  type        = string
  description = "La zona 2 donde vamos a desplegar la infraestructura"
  default     = "us-east-2b" # Ohio ping:92 ms
  nullable    = false
}

variable "cidr_subnet_2" {
  type        = string
  description = "Bloque CIDR para la subnet 2"
  default     = "10.0.5.0/24"
  nullable    = false
}

variable "db_name" {
  type        = string
  description = "Nombre de la base de datos"
  default     = "blacklistdb"
  nullable    = false
}

variable "db_user" {
  type        = string
  description = "Usuario de la base de datos"
  default     = "userdb"
  nullable    = false
}

variable "db_password" {
  type        = string
  description = "Contraseña de la base de datos"
  sensitive   = true
}

variable "app_name" {
  type        = string
  description = "Nombre del microservicio"
  default     = "blacklist-service"
  nullable    = false
}
variable "deployment_policy" {
  type        = string
  description = "strategia de despliegue (e.g., AllAtOnce, Rolling, RollingWithAdditionalBatch, Immutable, TrafficSplitting)"
  default     = "Rolling"
  nullable    = false
}
