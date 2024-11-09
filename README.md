# aws-oidc

This repository provides a Terraform and Terragrunt setup for managing AWS infrastructure with OIDC authentication. It includes preconfigured modules and a Makefile with common commands for easy management.

## Getting Started

To begin, clone the repository and review the Makefile targets for key commands.

### Makefile Targets

These Makefile targets simplify Terraform and Terragrunt operations:

```
docs      : Generate Terraform documentation
fmt       : Format Terraform files
init      : Initialize Terraform
refresh   : Refresh Terraform state
plan      : Plan Terraform changes
apply     : Apply Terraform changes
destroy   : Destroy Terraform-managed infrastructure
tfclean   : Clean up Terraform and Terragrunt cache files
```

## Usage

### Configuring S3 Backend

Set up `terragrunt.hcl` for remote state storage in S3 and configure a DynamoDB table for state locking. This ensures state management is secure and avoids conflicts.

#### Environment Variables

These variables control AWS credentials, endpoints, and Terraform configurations:

- `AWS_DEFAULT_REGION`: AWS region to use.
- `AWS_ACCESS_KEY_ID`: Your AWS access key for authentication.
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret key for authentication.
- `TF_S3_ENDPOINT`: S3 endpoint for S3 backend.
- `TF_DYNAMODB_ENDPOINT`: DynamoDB for S3 backend.
- `TF_VAR_CI_ENVIRONMENT_NAME`: Specifies the environment (e.g., `dev`, `pre`, `prod`).

#### Modules

Modules are located under `modules/`, e.g., the `vpc` module:

- `_locals.tf`: Local values
- `_main.tf`: Main configuration
- `_output.tf`: Output values
- `_variable.tf`: Variables
- `data.tf`: Data sources
- `default.tfvars`: Default variable values
- `dev.tfvars`: Development environment values
- `pre.tfvars`: Pre-production environment values
- `prod.tfvars`: Production environment values
- `terragrunt.hcl`: Terragrunt configuration

#### Terragrunt

Specify the appropriate `tfvars` file for your environment.

# License

This project is licensed under the [MIT License](/LICENSE). See the LICENSE file for details.
