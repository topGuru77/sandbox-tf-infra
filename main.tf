#Creating web server for airbnb

resource "aws_instance" "sandbox-web-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "sandbox-web-server"
  }
}

#Creating prod server for airbnb
resource "aws_instance" "sandbox-prod-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "sandbox-prod-server"
  }
}

resource "aws_instance" "sandbox-dev-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "sandbox-dev-server"
  }
}