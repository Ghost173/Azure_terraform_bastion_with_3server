resource "azurerm_resource_group" "rg_name" {
  name = "${var.resource_group_name}-${random_string.myrandom.id}"
  location = var.resource_group_location
}