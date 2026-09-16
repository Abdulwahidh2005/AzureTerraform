variable "environment" {
  type = string
  description = "The environment for which the resources are being created"
  default = "dev"
}

variable "os_disk_size" {
  type = number
  description = "The size of the OS disk in GB"
  default = 30
}

variable "is_delete" {
  type = bool
  description = "Whether to delete the OS disk on VM termination"
  default = true
}

variable "allowed_location" {
  type = list(string)
  description = "List of allowed Azure regions"
  default = ["South India","North India","Central India"]
}

variable "resource_tags" {
  type = map(string)
  description = "A map of tags to assign to the resources"
  default = {
    environment = "dev"
    owner       = "admin"
    department  = "devops"
  }
}

variable "network_config" {
  type = tuple([string,string,number])
  description = "A tuple containing the virtual network name, address space, and subnet prefix length"
  default = ["10.0.0.0/16", "10.0.2.0", 24]
}

variable "allowed_vm_sizes" {
  type = set(string)
  description = "List of allowed VM sizes"
  default = ["Standard_DS1_v2", "Standard_DS2_v2", "Standard_DS3_v2"]
}

# Object type
variable "vm_config" {
  type = object({
    size         = string
    publisher    = string
    offer        = string
    sku          = string
    version      = string
  })
  description = "Virtual machine configuration"
  default = {
    size         = "Standard_DS1_v2"
    publisher    = "Canonical"
    offer        = "0001-com-ubuntu-server-jammy"
    sku          = "22_04-lts"
    version      = "latest"
  }
}