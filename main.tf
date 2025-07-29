provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "this" {
    instance_type = "t2.micro"
    ami="ami-020cba7c55df1f615"
    subnet_id = "subnet-0b6587eee01d5129c"

    tags = {
      Name="tfdemo"
    }
}