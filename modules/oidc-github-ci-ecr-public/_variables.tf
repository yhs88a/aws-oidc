variable "CI_ENVIRONMENT_NAME" {
  type        = string
  description = "Project Environment (Required)"
  default     = "dev"
}

variable "name" {
  type        = string
  description = "Name of IAM role"
  default     = null
}

variable "description" {
  type        = string
  description = "IAM Role description"
  default     = null
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the role"
  type        = list(string)
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to the resources created"
  default     = {}
}
