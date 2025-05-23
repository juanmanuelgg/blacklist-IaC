output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Subnets publicas de la red."
}
output "security_group_id" {
  value       = aws_security_group.security_group.id
  description = "ID del grupo de seguridad."
}
