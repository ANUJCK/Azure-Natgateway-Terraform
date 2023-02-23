resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location

} 
resource "azurerm_public_ip" "publicIP" {
  name                = var.publicIP_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = var.allocation_method
  sku                 = "Standard"
  zones               = var.no_of_zones_publicIP
  
}

resource "azurerm_network_security_group" "sg" {
  name                = var.security_group_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  security_rule {
    name                       = var.security_rule_name
    priority                   = var.protocol_priority
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = var.protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
  

  subnet {
    name           = var.subnet1_name
    address_prefix = var.address_prefix_subnet1
  }

  subnet {
    name           = var.subnet2_name
    address_prefix = var.address_prefix_subnet2
    security_group = azurerm_network_security_group.sg.id
  }


}

resource "azurerm_nat_gateway" "test-terraform" {
  name                    = var.nat_gateway_name
  location                = azurerm_resource_group.example.location
  resource_group_name     = azurerm_resource_group.example.name
  idle_timeout_in_minutes = 4
  sku_name                = "Standard"
  zones                   = var.no_of_zones_nat_gateway
  
}