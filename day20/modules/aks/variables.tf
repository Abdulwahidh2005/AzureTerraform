variable "location" {

}
variable "resource_group_name" {}

variable "ssh_public_key" {
  # Terraform is run from the day20 directory; this resolves to
  # C:\Users\AbdulWahidhD\Downloads\Terraform\.ssh\key.pub.
  default = "../.ssh/key.pub"
}
