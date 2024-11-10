name = "AWSOIDCGitHubCIEcrPublic"

description = "OIDC for GitHub-CI ECR Public Group"

policy_arns = [
  "arn:aws:iam::aws:policy/AmazonElasticContainerRegistryPublicFullAccess",
]

tags = {
  Environment = "dev"
  Project     = "iam-default"
  Terraform   = "True"
}
