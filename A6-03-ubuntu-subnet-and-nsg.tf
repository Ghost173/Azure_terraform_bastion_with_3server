#create ubuntu subnet
resource "azurerm_subnet" "ubuntusubnet" {
  name = var.ubuntu_subnet_name
  address_prefixes = var.ubuntu_subnet_address
  virtual_network_name = azurerm_virtual_network.vent.name
  resource_group_name = azurerm_resource_group.rg_name.name
}

#vnet nsg
resource "azurerm_network_security_group" "ubuntu_subnet_nsg" {
  name = "${azurerm_subnet.ubuntusubnet.name}-nsg"
  location = azurerm_resource_group.rg_name.location
  resource_group_name = azurerm_resource_group.rg_name.name
}


#associate ngs with vent 
resource "azurerm_subnet_network_security_group_association" "ubuntu_subnet_nsg_association" {
    depends_on = [ azurerm_network_security_rule.ubuntu_nsg_rule_inbound ]
  subnet_id = azurerm_subnet.ubuntusubnet.id
  network_security_group_id = azurerm_network_security_group.ubuntu_subnet_nsg.id
}

## Locals Block for Security Rules
locals {
  one_inbound_ports_map = {
    "100" : "80",
    "110" : "443",
    "120" : "22"
  }
}

#create nsg rule 
resource "azurerm_network_security_rule" "ubuntu_nsg_rule_inbound" {
    for_each                   = local.one_inbound_ports_map
  name                       = "Rule-port-${each.value}"
  priority                   = each.key
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = each.value
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  resource_group_name = azurerm_resource_group.rg_name.name
  network_security_group_name = azurerm_network_security_group.ubuntu_subnet_nsg.name
}