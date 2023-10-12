resource "aws_eip" "elastic_ip" {
    domain = "vpc"
    depends_on = [ aws_internet_gateway.igw ]
}

resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.elastic_ip.id
    subnet_id = aws_subnet.public-us-east-1a.id
    depends_on = [ aws_internet_gateway.igw ]

    tags = {
      Name = "nat"
    }

  
}