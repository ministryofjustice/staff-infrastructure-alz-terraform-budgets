# Set Terraform version, backend parameters set at pipeline level
terraform {
  backend "azurerm" {
    # Not required when run in pipeline, only required for command line testing
    storage_account_name = "samojtfstate002"
    resource_group_name  = "rg-prep-tfstate-001"
    container_name       = "tfstate"
    key                  = "budgetspreprod.terraform.tfstate"
  }
}