resource "aws_instance" "Project1" {
  count = 3
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  tags = {
  Name = var.Project1-server-name-tags[count.index]
  }
}
