resource "aws_route_table" "tfer--rtb-002D-07193c8deff00ad72" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0aabcff90347094ee"
  }

  tags = {
    Name = "rt-www"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}
