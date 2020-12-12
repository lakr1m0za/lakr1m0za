resource "aws_internet_gateway" "tfer--igw-002D-0aabcff90347094ee" {
  tags = {
    Name = "ig-www"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-038c5ece6185da550_id}"
}
