resource "aws_instance" "web" {
  ami           = "ami-0649bea3443ede307"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
    }
    user_data = "${file("script.sh")}"
  }
