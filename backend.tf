terraform {
  backend "azurerm" {
    resource_group_name = "rg-terraform-rw"
    storage_account_name = "storageaccountrebecca"
    container_name = "container-rw"
    key = "rebecakey"
  }
}

