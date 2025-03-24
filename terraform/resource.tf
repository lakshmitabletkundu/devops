resource "azurerm_resource_group" "rg"{
   name= "${var.prefix}-res-001"
   location= var.location
}
