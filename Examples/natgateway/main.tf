module "natgateway" {

source = "../../module/natgateway"
resource_group_name = "testresourcegroup"
location = "East US"
publicIP_name = "test_public_IP"
security_group_name = "test_sg"
security_rule_name = "test_rule_sg"
protocol_priority = 100
protocol = "Tcp"
no_of_zones_publicIP = ["3"]
allocation_method = "Static" 
virtual_network_name = "test_vnet123"
address_space = [ "10.0.0.0/16"] 
subnet1_name = "testsubnet11"
subnet2_name = "testsubnet22"
address_prefix_subnet1 = "10.0.1.0/26"
address_prefix_subnet2 = "10.0.2.0/28"
nat_gateway_name = "test_natgateway"
no_of_zones_nat_gateway = ["3"]

}