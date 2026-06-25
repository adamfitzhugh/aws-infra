provider "aws" {
  region = var.aws_region
  # Credentials are injected via environment variables by the pipeline:
  #   AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_SESSION_TOKEN
  # These are retrieved from Vault's AWS secrets engine in the workflow.
}
