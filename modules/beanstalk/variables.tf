variable "app_name" {
  type        = string
  description = "Nombre del microservicio"
}
variable "deployment_policy" {
  type        = string
  description = "strategia de despliegue (e.g., AllAtOnce, Rolling, RollingWithAdditionalBatch, Immutable, TrafficSplitting)"
}
