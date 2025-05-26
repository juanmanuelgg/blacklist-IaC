variable "app_name" {
  type        = string
  description = "Nombre del microservicio"
}
variable "deployment_policy" {
  type        = string
  description = "strategia de despliegue (e.g., AllAtOnce, Rolling, RollingWithAdditionalBatch, Immutable, TrafficSplitting)"
}
variable "vpc_id" {
  type        = string
  description = "ID de la VPC donde se desplegará la aplicación"
}
variable "subnet_ids" {
  type        = list(string)
  description = "IDs de las subnets donde se desplegará la aplicación"
}
variable "security_group_ids" {
  type        = list(string)
  description = "IDs de los grupos de seguridad para la aplicación"
}
variable "elb_subnet_ids" {
  type        = list(string)
  description = "IDs de las subnets para el load balancer"
  default     = []
}
