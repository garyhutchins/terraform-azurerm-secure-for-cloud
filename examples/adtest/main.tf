
provider "azurerm" {
  features {}
  subscription_id = var.secure_for_cloud_azure_subscription_id
  tenant_id       = var.secure_for_cloud_azure_tenant_id
  client_id     = var.secure_for_cloud_azure_client_id
  client_secret = var.secure_for_cloud_azure_client_secret
}

provider "azuread" {
  tenant_id = var.secure_for_cloud_azure_tenant_id
  client_id     = var.secure_for_cloud_azure_client_id
  client_secret = var.secure_for_cloud_azure_client_secret
}

provider "sysdig" {
  sysdig_secure_url       =  "https://us2.app.sysdig.com/secure/"
  sysdig_secure_api_token =  var.secure_api_token
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "tenant-existing-resources-k8s" {
  source                  = "../tenant-existing-resources-k8s"
  resource_group_name     = var.resource_group_name
}
