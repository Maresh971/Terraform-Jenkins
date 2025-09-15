provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0360c520857e3138f" # us-east-1
  instance_type = "t2.medium"
  tags = {
      Name = "TF-Instance"
  }
}
