resource "azurerm_virtual_network" "vnet" {
  name                = "Batman"
  address_space       = ["10.0.0.0/16"]
  location            = "Central US"
  resource_group_name = "CICDDemo"
}

#Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = "Robin"
  resource_group_name  = "CICDDemo"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]

}