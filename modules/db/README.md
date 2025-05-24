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
| [aws_db_instance.db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_parameter_group.db_parameter_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_subnet_group.db_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Nombre del microservicio | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Nombre de la base de datos | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Contraseña de la base de datos | `string` | n/a | yes |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | Usuario de la base de datos | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | IDs de subredes para la base de datos | `set(string)` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | Lista de IDs de grupos de seguridad para la base de datos | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_host"></a> [database\_host](#output\_database\_host) | El host de la base de datos. |
| <a name="output_database_port"></a> [database\_port](#output\_database\_port) | El puerto de la base de datos. |
