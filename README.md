## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.97.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | ./modules/db | n/a |
| <a name="module_network_lite"></a> [network\_lite](#module\_network\_lite) | ./modules/network-lite | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Nombre del microservicio | `string` | `"blacklist-service"` | no |
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | n/a | `any` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | La region donde vamos a desplegar la infraestructura | `string` | `"us-east-2"` | no |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | n/a | `any` | n/a | yes |
| <a name="input_aws_zone_1"></a> [aws\_zone\_1](#input\_aws\_zone\_1) | La zona 1 donde vamos a desplegar la infraestructura | `string` | `"us-east-2a"` | no |
| <a name="input_aws_zone_2"></a> [aws\_zone\_2](#input\_aws\_zone\_2) | La zona 2 donde vamos a desplegar la infraestructura | `string` | `"us-east-2b"` | no |
| <a name="input_cidr_subnet_1"></a> [cidr\_subnet\_1](#input\_cidr\_subnet\_1) | Bloque CIDR para la subnet 1 | `string` | `"10.0.4.0/24"` | no |
| <a name="input_cidr_subnet_2"></a> [cidr\_subnet\_2](#input\_cidr\_subnet\_2) | Bloque CIDR para la subnet 2 | `string` | `"10.0.5.0/24"` | no |
| <a name="input_cidr_vpc"></a> [cidr\_vpc](#input\_cidr\_vpc) | Bloque CIDR para la VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Nombre de la base de datos | `string` | `"blacklistdb"` | no |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Contraseña de la base de datos | `string` | n/a | yes |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | Usuario de la base de datos | `string` | `"userdb"` | no |
| <a name="input_deployment_policy"></a> [deployment\_policy](#input\_deployment\_policy) | strategia de despliegue (e.g., AllAtOnce, Rolling, RollingWithAdditionalBatch, Immutable, TrafficSplitting) | `string` | `"Rolling"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_host"></a> [database\_host](#output\_database\_host) | El host de la base de datos. |
| <a name="output_database_port"></a> [database\_port](#output\_database\_port) | El puerto de la base de datos. |
