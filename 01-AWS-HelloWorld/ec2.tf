resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.size

  tags = {
    Name = "HelloWorldTerraform"
  }
}