output "security_group_id" {
  value       = aws_security_group.security_group.id
  description = "ID del grupo de seguridad."
}

output "subnet_public_1_id" {
  value       = aws_subnet.subnet_public_1.id
  description = "ID de la subred pública 1."
}

output "subnet_public_2_id" {
  value       = aws_subnet.subnet_public_2.id
  description = "ID de la subred pública 2."
}
