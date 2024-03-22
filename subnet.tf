# public subnet
resource "aws_subnet" "public1" {
  availability_zone       = "us-east-1a"
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.vpc1.id
  tags = {
    Name = "public-subnet-1"
    env  = "dev"
  }

}
resource "aws_subnet" "public2" {
  availability_zone       = "us-east-1b"
  cidr_block              = "192.168.2.0/24"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-2"
    env  = "dev"
  }

}

#Private subnet

resource "aws_subnet" "private1" {
  availability_zone = "us-east-1a"
  cidr_block        = "192.168.3.0/24"
  vpc_id            = aws_vpc.vpc1.id
  tags = {
    Name = "private-subnet-1"
    env  = "dev"
  }
}
resource "aws_subnet" "private2" {
  availability_zone = "us-east-1b"
  cidr_block        = "192.168.4.0/24"
  vpc_id            = aws_vpc.vpc1.id
  tags = {
    Name = "private-subnet-2"
    env  = "dev"
  }

}