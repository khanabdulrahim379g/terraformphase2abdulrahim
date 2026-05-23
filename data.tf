data "azurerm_key_vault" "kv" {
  name                = "kv-ntms-workshop-1"
  resource_group_name = "keyvaultrg"
}


data "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-admin-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}
