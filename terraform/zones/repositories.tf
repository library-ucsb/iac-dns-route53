
module "module-library_workspace" {
  source                = "github.com/library-ucsb/terraform-tfc-module-library_workspace"

  name                  = var.repo.name
  description           = var.repo.description
  tfc_organization      = var.repo.tfc_organization
  oauth_client_id       = var.repo.oauth_client_id
  github_organization   = var.repo.github_organization
  tfc_working_directory = var.repo.tfc_working_directory
  auto_apply            = var.repo.tfc_auto_apply
  github_enforce_admins = var.repo.github_enforce_admins
}

output "library-workspace" {
    value = module.module-library_workspace
}