output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Subnets publicas de la red."
}
output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Subnets privadas de la red."
}
output "security_group_id" {
  value       = aws_security_group.security_group.id
  description = "ID del grupo de seguridad."
}
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID de la VPC."
}
output "eb_security_group_id" {
  value       = aws_security_group.eb_security_group.id
  description = "ID del grupo de seguridad para Elastic Beanstalk."
}
