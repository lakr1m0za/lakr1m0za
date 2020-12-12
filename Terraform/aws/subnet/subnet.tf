resource "aws_subnet" "tfer--subnet-002D-0334feae36a806029" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "192.0.150.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "sb2-www"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0d3d97f861a78db8e" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "192.0.100.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "sb1-www"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}

resource "aws_subnet" "tfer--subnet-002D-0ee0098f3f5daaf25" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "192.0.200.0/24"
  map_public_ip_on_launch         = "false"

  tags = {
    Name = "sb3-www"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}
