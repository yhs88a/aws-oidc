resource "aws_iam_role" "this" {
  name                  = var.name
  description           = var.description
  assume_role_policy    = file("assume_role_policy.json")
  force_detach_policies = true
  max_session_duration  = 3600
  tags                  = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each   = toset(var.policy_arns)
  role       = aws_iam_role.this.name
  policy_arn = each.value
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {}
