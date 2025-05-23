variable "cidr_vpc" {
  type        = string
  description = "CIDR de la VPC"
}

variable "zone_1" {
  type        = string
  description = "La zona 1 donde vamos a desplegar la infraestructura"
}

variable "cidr_subnet_1" {
  type        = string
  description = "CIDR de la subred 1"
}

variable "zone_2" {
  type        = string
  description = "La zona 2 donde vamos a desplegar la infraestructura"
}

variable "cidr_subnet_2" {
  type        = string
  description = "CIDR de la subred 2"
}

variable "app_name" {
  type        = string
  description = "Nombre del microservicio"
}
