module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "prabu_jaganathan@nsearchglobal.com"
    AccountName               = "prabu-nsearch"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "prabu_jaganathan@nsearchglobal.com"
    SSOUserFirstName          = "Prabu"
    SSOUserLastName           = "Jagan"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Prabu_nsearch"
}
