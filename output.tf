output "pip_o" {
  value = azurerm_public_ip.pip.ip_address


}

output "rdp_command" {
  value = "mstsc /v:${azurerm_public_ip.pip.ip_address}"
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "vm_nameo" {
  value = azurerm_windows_virtual_machine.vm.name
}