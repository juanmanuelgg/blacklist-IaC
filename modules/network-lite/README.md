## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.rtb_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.rta_subnet_public_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rta_subnet_public_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.subnet_public_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_public_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Nombre del microservicio | `string` | n/a | yes |
| <a name="input_cidr_subnet_1"></a> [cidr\_subnet\_1](#input\_cidr\_subnet\_1) | CIDR de la subred 1 | `string` | n/a | yes |
| <a name="input_cidr_subnet_2"></a> [cidr\_subnet\_2](#input\_cidr\_subnet\_2) | CIDR de la subred 2 | `string` | n/a | yes |
| <a name="input_cidr_vpc"></a> [cidr\_vpc](#input\_cidr\_vpc) | CIDR de la VPC | `string` | n/a | yes |
| <a name="input_zone_1"></a> [zone\_1](#input\_zone\_1) | La zona 1 donde vamos a desplegar la infraestructura | `string` | n/a | yes |
| <a name="input_zone_2"></a> [zone\_2](#input\_zone\_2) | La zona 2 donde vamos a desplegar la infraestructura | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID del grupo de seguridad. |
| <a name="output_subnet_public_1_id"></a> [subnet\_public\_1\_id](#output\_subnet\_public\_1\_id) | ID de la subred pública 1. |
| <a name="output_subnet_public_2_id"></a> [subnet\_public\_2\_id](#output\_subnet\_public\_2\_id) | ID de la subred pública 2. |
