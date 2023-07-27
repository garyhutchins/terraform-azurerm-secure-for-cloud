variable "secure_for_cloud_azure_subscription_id" {
    type = string
}

variable "secure_for_cloud_azure_tenant_id" {
    type = string
}

variable "secure_for_cloud_azure_client_id" {
    type = string
}

variable "secure_for_cloud_azure_client_secret" {
    type      = string
    sensitive = true
}

variable "azure_region" {
    type        = string
    description = "Azure Zone to deploy demo resources"
}

variable "sysdig_secure_url" {
    description = "You Sysdig SaaS URL"
    default = ""
    type        = string
}

variable "secure_api_token" {
    description = "Sysdig Secure API Token"
    default = ""
    type        = string
    sensitive   = true
}

variable "resource_group_name" {
    description = "Name of resource group"
    type        = string
}