# Confirms the pipeline is authenticated and operating in the correct AWS account.
data "aws_caller_identity" "current" {}

output "aws_account_id" {
  description = "AWS account ID the pipeline is operating in."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_caller_arn" {
  description = "ARN of the IAM identity the pipeline is using."
  value       = data.aws_caller_identity.current.arn
}
