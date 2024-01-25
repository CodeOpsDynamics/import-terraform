# import-terraform
1.import feature of terraform being used

2.Initialy while import resource in our terraform code we have to create blank/empty code blocks of that particular resource,in our case you can refer to below example:
resource "azurerm_resource_group" "rgconnect" {}
resource "azurerm_storage_account" "saconnect" {}

3.terraform import azurerm_resource_group.rgconnect /subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/rgconnect3232

4.terraform import azurerm_storage_account.saconnect /subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/rgconnect3232/providers/Microsoft.Storage/storageAccounts/djsdj2313

5.terraform state list
azurerm_resource_group.rgconnect
azurerm_storage_account.saconnect

6.terraform state show azurerm_resource_group.rgconnect
# azurerm_resource_group.rgconnect:
resource "azurerm_resource_group" "rgconnect" {
    id       = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/rgconnect3232"
    location = "eastus"
    name     = "rgconnect3232"
    tags     = {}
}

7.terraform state show azurerm_storage_account.saconnect
# azurerm_storage_account.saconnect:
resource "azurerm_storage_account" "saconnect" {
    access_tier                       = "Hot"
    account_kind                      = "StorageV2"
    account_replication_type          = "RAGRS"
    account_tier                      = "Standard"
    allow_nested_items_to_be_public   = false
    cross_tenant_replication_enabled  = false
    default_to_oauth_authentication   = false
    enable_https_traffic_only         = true
    id                                = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/rgconnect3232/providers/Microsoft.Storage/storageAccounts/djsdj2313"
    infrastructure_encryption_enabled = false
    is_hns_enabled                    = false
    location                          = "eastus"
    min_tls_version                   = "TLS1_2"
    name                              = "djsdj2313"
    nfsv3_enabled                     = false
    primary_access_key                = (sensitive value)
    primary_blob_connection_string    = (sensitive value)
    primary_blob_endpoint             = "https://djsdj2313.blob.core.windows.net/"
    primary_blob_host                 = "djsdj2313.blob.core.windows.net"
    primary_connection_string         = (sensitive value)
    primary_dfs_endpoint              = "https://djsdj2313.dfs.core.windows.net/"
    primary_dfs_host                  = "djsdj2313.dfs.core.windows.net"
    primary_file_endpoint             = "https://djsdj2313.file.core.windows.net/"
    primary_file_host                 = "djsdj2313.file.core.windows.net"
    primary_location                  = "eastus"
    primary_queue_endpoint            = "https://djsdj2313.queue.core.windows.net/"
    primary_queue_host                = "djsdj2313.queue.core.windows.net"
    primary_table_endpoint            = "https://djsdj2313.table.core.windows.net/"
    primary_table_host                = "djsdj2313.table.core.windows.net"
    primary_web_endpoint              = "https://djsdj2313.z13.web.core.windows.net/"
    primary_web_host                  = "djsdj2313.z13.web.core.windows.net"
    public_network_access_enabled     = true
    queue_encryption_key_type         = "Service"
    resource_group_name               = "rgconnect3232"
    secondary_access_key              = (sensitive value)
    secondary_blob_connection_string  = (sensitive value)
    secondary_blob_endpoint           = "https://djsdj2313-secondary.blob.core.windows.net/"
    secondary_blob_host               = "djsdj2313-secondary.blob.core.windows.net"
    secondary_connection_string       = (sensitive value)
    secondary_dfs_endpoint            = "https://djsdj2313-secondary.dfs.core.windows.net/"
    secondary_dfs_host                = "djsdj2313-secondary.dfs.core.windows.net"
    secondary_location                = "westus"
    secondary_queue_endpoint          = "https://djsdj2313-secondary.queue.core.windows.net/"
    secondary_queue_host              = "djsdj2313-secondary.queue.core.windows.net"
    secondary_table_endpoint          = "https://djsdj2313-secondary.table.core.windows.net/"
    secondary_table_host              = "djsdj2313-secondary.table.core.windows.net"
    secondary_web_endpoint            = "https://djsdj2313-secondary.z13.web.core.windows.net/"
    secondary_web_host                = "djsdj2313-secondary.z13.web.core.windows.net"
    sftp_enabled                      = false
    shared_access_key_enabled         = true
    table_encryption_key_type         = "Service"
    tags                              = {}

    blob_properties {
        change_feed_enabled           = false
        change_feed_retention_in_days = 0
        last_access_time_enabled      = false
        versioning_enabled            = false

        container_delete_retention_policy {
            days = 7
        }

        delete_retention_policy {
            days = 7
        }
    }

    network_rules {
        bypass                     = [
            "AzureServices",
        ]
        default_action             = "Allow"
        ip_rules                   = []
        virtual_network_subnet_ids = []
    }

    queue_properties {
        hour_metrics {
            enabled               = true
            include_apis          = true
            retention_policy_days = 7
            version               = "1.0"
        }
        logging {
            delete                = false
            read                  = false
            retention_policy_days = 0
            version               = "1.0"
            write                 = false
        }
        minute_metrics {
            enabled               = false
            include_apis          = false
            retention_policy_days = 0
            version               = "1.0"
        }
    }

    share_properties {
        retention_policy {
            days = 7
        }
    }
}

8.Post import all mandatory attributes have been defined in needed resource blocks after which "terraform plan" was executed to check whether our state file matches the "desired state" and "current state" or not.

9.Happy Learning !