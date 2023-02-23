variable "resource_group_name" {
  default = "nat-gateway"
  type = string
}

variable "location" {
  default = "East US"
  type = string
}

variable "publicIP_name" {
  default = "test-publicIP"
  type = string
}

variable "security_group_name" {
  default = "security_group_test"
  type = string
}

variable "dns_servers" {
  default = ["10.0.0.4", "10.0.0.5"]
  type = list(any)
}

variable "security_rule_name" {
  default = "test_rule"
  type = string
}

variable "protocol_priority" {
  default = "100"
  type = number
}

variable "protocol" {
  default = "Tcp"
  type = string
}

variable "no_of_zones_publicIP" {
  default = ["3"]
  type = list(number)
}

variable "allocation_method" {
  default = "Static"
   type = string
}

variable "virtual_network_name" {
  default = "test-vNET"
  type = string
}

variable "address_space" {
  default = ["10.0.0.0/16"]
  type = list(any)
}

variable "subnet1_name" {
  default = "testsubnet1"
type = string
}

variable "subnet2_name" {
  default = "testsubnet2"
  type = string
}

variable "address_prefix_subnet1" {
  default = "10.0.1.0/24"
  type = string
}

variable "address_prefix_subnet2" {
  default = "10.0.1.0/24"
  type = string
}

variable "nat_gateway_name" {

    default = "test-natgateway"
type = string

  
}

variable "no_of_zones_nat_gateway" {
  default = ["3"]
  type = list(number)

}