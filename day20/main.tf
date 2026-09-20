resource "azurerm_resource_group" "rg1" {
  name     = var.rgname
  location = var.location
}


# Create Azure Kubernetes Service using a system-assigned managed identity.
module "aks" {
  source              = "./modules/aks/"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "local_file" "kubeconfig" {
  depends_on = [module.aks]
  filename   = "./kubeconfig"
  content    = module.aks.config
}
