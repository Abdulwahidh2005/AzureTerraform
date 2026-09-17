locals {
    formatted_name = lower(replace(var.project_name, " ", "-"))
}

resource azurerm_resource_group "rg" {
    name = local.formatted_name
    location = "South India"
}

output "rgname" {
    value = azurerm_resource_group.rg.name
}