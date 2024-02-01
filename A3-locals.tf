# Define Local Values in Terraform
locals {
  owners = var.business_division
  environment = var.environment
  resource_name_prefix = "${var.business_division}"
  common_tags = {
    owners  = local.owners,
    environment = local.environment
  }
}