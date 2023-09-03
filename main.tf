terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "its-my-first-realtime-project-1"

  tags = {
    Name        = "Project-1"
    Environment = "p1"
  }
}

resource "aws_instance" "project" {
  ami           ="ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"

  tags = {
    Name = "project-1"
  }
}


resource "aws_db_instance" "default" {
  allocated_storage    = 5
  db_name              = "mydb1"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "project1"
  password             = "project123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
