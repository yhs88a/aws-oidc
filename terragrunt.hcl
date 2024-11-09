locals {
  aws_project_name    = "iam-default"
  aws_region          = get_env("AWS_DEFAULT_REGION")
  aws_bucket          = get_env("TF_S3_ENDPOINT")
  aws_dynamodb_table  = get_env("TF_DYNAMODB_ENDPOINT")
  ci_environment_name = get_env("TF_VAR_CI_ENVIRONMENT_NAME")
}

remote_state {
  backend = "s3"
  generate = {
    path      = "remote_state.tf"
    if_exists = "overwrite"
  }
  config = {
    region         = local.aws_region
    bucket         = local.aws_bucket
    dynamodb_table = local.aws_dynamodb_table
    key            = "${get_aws_account_id()}/${local.aws_region}/${local.aws_project_name}/${local.ci_environment_name}/${path_relative_to_include()}/terraform.tfstate"
    encrypt        = true
  }
}
