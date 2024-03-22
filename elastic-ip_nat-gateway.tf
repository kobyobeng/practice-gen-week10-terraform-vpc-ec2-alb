#Elastic ip
resource "aws_eip" "eip" {

}

#Nat gateway
resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public1.id
}