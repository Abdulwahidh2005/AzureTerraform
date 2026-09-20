variable "rgname" {
  type        = string
  description = "resource group name"
  default     = "aks-rg"
}

variable "location" {
  type    = string
  default = "canadacentral"
}

variable "keyvault_name" {
  type    = string
  default = "aks-keyvault"
}
