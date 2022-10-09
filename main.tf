provider "aws" {
  region 	= "us-east-1"
}

module "aft_pipeline" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  # Required Variables
  ct_management_account_id                         = "731685434595"
  log_archive_account_id                           = "453548080987"
  audit_account_id                                 = "212171989657"
  aft_management_account_id                        = "731685434595"
  ct_home_region                                   = "us-east-1"
  tf_backend_secondary_region                      = "us-east-1"
  
  # Terraform variables
  terraform_version                                = "0.15.5"
  terraform_distribution                           = "oss"
    
  # VCS variables
  vcs_provider                                     = "codecommit"

  # AFT Feature flags
  aft_feature_cloudtrail_data_events               = false
  aft_feature_enterprise_support                   = false
  aft_feature_delete_default_vpcs_enabled          = true
}