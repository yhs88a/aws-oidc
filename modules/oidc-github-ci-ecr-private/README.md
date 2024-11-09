## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.75.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/5.75.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/5.75.0/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_CI_ENVIRONMENT_NAME"></a> [CI\_ENVIRONMENT\_NAME](#input\_CI\_ENVIRONMENT\_NAME) | Project Environment (Required) | `string` | `"dev"` | no |
| <a name="input_description"></a> [description](#input\_description) | IAM Role description | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of IAM role | `string` | `null` | no |
| <a name="input_policy_arns"></a> [policy\_arns](#input\_policy\_arns) | List of policy ARNs to attach to the role | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the resources created | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_iam_role_arn"></a> [aws\_iam\_role\_arn](#output\_aws\_iam\_role\_arn) | The ARN of the IAM role. |
| <a name="output_aws_iam_role_assume_role_policy"></a> [aws\_iam\_role\_assume\_role\_policy](#output\_aws\_iam\_role\_assume\_role\_policy) | The assume role policy of the IAM role. |
| <a name="output_aws_iam_role_name"></a> [aws\_iam\_role\_name](#output\_aws\_iam\_role\_name) | The name of the IAM role. |
| <a name="output_aws_iam_role_policy_attachment_policy_arns"></a> [aws\_iam\_role\_policy\_attachment\_policy\_arns](#output\_aws\_iam\_role\_policy\_attachment\_policy\_arns) | List of policy ARNs attached to the IAM role. |
