name = "AWSOIDCGitHubCIEcrPrivate"

description = "OIDC for GitHub-CI ECR Private Group"

policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
]

tags = {
  Environment = "dev"
  Project     = "iam-default"
  Terraform   = "True"
}
