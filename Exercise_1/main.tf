# cloud provider, region; Credentials have been provided via environment variables
provider "aws" {
  region = "us-east-1"
}

# 4 AWS t2.micro EC2 instances named Udacity T2
# vpc-0336fcfcc4e86a98a
resource "aws_instance" "udacity_t2" {
  count         = 4
  ami           = "ami-053b0d53c279acc90"
  key_name      = "Frank's key"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04c5a1eda1cf5892f"

  tags = {
    Name = "Udacity T2"
  }
}

# 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "udacity_m4" {
#   count         = 2
#   ami           = "ami-053b0d53c279acc90"
#   key_name      = "Frank's key"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-04c5a1eda1cf5892f"

#   tags = {
#     Name = "Udacity M4"
#   }
# }
