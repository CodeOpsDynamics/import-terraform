resource "azurerm_resource_group" "rgconnect" {
  location = "eastus"
    name     = "rgconnect3232"
}


resource "azurerm_storage_account" "saconnect" {
    access_tier                       = "Hot"
    account_kind                      = "StorageV2"
    account_replication_type          = "RAGRS"
    account_tier                      = "Standard"
    allow_nested_items_to_be_public   = false
    cross_tenant_replication_enabled  = false
    default_to_oauth_authentication   = false
    enable_https_traffic_only         = true
    infrastructure_encryption_enabled = false
    is_hns_enabled                    = false
    location                          = "eastus"
    min_tls_version                   = "TLS1_2"
    name                              = "djsdj2313"
    resource_group_name               = "rgconnect3232"

}
