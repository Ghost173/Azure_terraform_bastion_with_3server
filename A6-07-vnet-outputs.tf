
output "resource_group_name" {
    description = "rg name"
  value = azurerm_resource_group.rg_name.name
}

output "resource_group_id" {
  description = "rg name"
  value = azurerm_resource_group.rg_name.id
}


output "vnet_name" {
  description = "vnet name"
  value = azurerm_virtual_network.vent.name
}