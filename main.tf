teffaform{
    required_provider{
        aws={
            source="hashicorp/aws"
            version="~>4.16"
        }
    }
    required_version=">=1.20"
}

provider "aws" {
    region = "aws-east-1"
}

resource "aws_instance" "my_ec2_instance" {
  count = 4
  ami_id = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform_batch_instance"
  }
}