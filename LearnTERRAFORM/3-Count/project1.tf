resource "aws_instance" "Project1" {
  count = 3
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  tags = {
  Name = "Project1-Web-${count.index}"
  }
}