resource "aws_vpc" "tfer--vpc-002D-038c5ece6185da550" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "192.0.0.0/16"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "www-vpc"
  }
}
