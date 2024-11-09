output "aws_iam_role_name" {
  description = "The name of the IAM role."
  value       = aws_iam_role.this.name
}

output "aws_iam_role_arn" {
  description = "The ARN of the IAM role."
  value       = aws_iam_role.this.arn
}

output "aws_iam_role_policy_attachment_policy_arns" {
  description = "List of policy ARNs attached to the IAM role."
  value       = [for k, v in aws_iam_role_policy_attachment.this : v.policy_arn]
}

output "aws_iam_role_assume_role_policy" {
  description = "The assume role policy of the IAM role."
  value       = aws_iam_role.this.assume_role_policy
}
