# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


module "aft" {
  source = "app.terraform.io/CloudKineticsTechPteLtd/aft-module/aws"
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/learn-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_username}/learn-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_username}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/learn-terraform-aft-account-customizations"
  account_customizations_repo_branch            = var.account_customizations_repo_branch
  account_provisioning_customizations_repo_branch = var.account_provisioning_customizations_repo_branch
  account_request_repo_branch                   = var.account_request_repo_branch
  global_customizations_repo_branch             = var.global_customizations_repo_branch
}
