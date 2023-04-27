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
    region = "aws-south-1"
}

resource "aws_instance" "my_ec2_instance" {
  count = 1
  ami_id = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform_batch_instance"
  }
}

resource "aws_s3_bucket" "my_s3_bucket" {
bucket = "terraform-terraform-with-dushyantkumar-12345"
tags={
    Name = "terraform-terraform-with-dushyantkumar-12345"
    Environment = "Dev"
  }  
}
