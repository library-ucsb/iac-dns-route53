terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region                = "us-west-2"
    bucket                = "ucsb-library-iac-terraform-zones-state"
    key                   = "terraform.tfstate"
    dynamodb_table        = "ucsb-library-iac-terraform-zones-state-lock"
    profile               = ""
    assume_role.role_arn  = ""
    encrypt               = "true"
  }
}
