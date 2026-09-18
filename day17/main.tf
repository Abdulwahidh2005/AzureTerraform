variable prefix {
  description = "Prefix for resource names"
  type        = string
  default     = "day17"
}

resource azurerm_resource_group "rg" {
  name     = "${var.prefix}-rg"
  location = "East US"
}

resource "azurerm_service_plan" "asp" {
  name                = "${var.prefix}-asp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.prefix}-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {}
}

resource "azurerm_linux_web_app_slot" "slot1" {
  name           = "${var.prefix}-slot1"
  app_service_id = azurerm_linux_web_app.webapp.id

  site_config {}
}