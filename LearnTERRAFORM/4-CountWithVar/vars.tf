variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" { default = "us-east-2" }

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0e01ce4ee18447327"
    us-west-2 = "ami-0ce21b51cb31a48b8"
  }
}

variable "Project1-server-name-tags" {
  type = list(string)
  default = ["Project1-Web-1", "Project1-Web-2", "Project1-Web-3"]
}
