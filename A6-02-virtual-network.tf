resource "azurerm_virtual_network" "vent" {
  name = "${azurerm_resource_group.rg_name.name}"
  address_space = var.vnet_address
  location = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg_name.name
}