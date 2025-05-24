## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.19.0 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Nombre del microservicio | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Subnets publicas de la red. |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID del grupo de seguridad. |
