
resource "aws_lightsail_key_pair" "main_key_pair" {
  name       = "main_key"
  public_key = file(var.ssh_key_file)
}

locals {
  user_data_file         = file("${path.module}/user_data.sh")
  user_data_file_content = join("\n", tolist([local.user_data_file, var.extra_user_data]))
}
resource "aws_lightsail_instance" "server" {
  name              = "server0"
  availability_zone = var.availability_zone
  blueprint_id      = "debian_10"
  bundle_id         = "micro_2_0"
  key_pair_name     = aws_lightsail_key_pair.main_key_pair.name
  user_data         = local.user_data_file_content
}

resource "aws_lightsail_instance_public_ports" "server" {
  instance_name = aws_lightsail_instance.server.name

  port_info {
    cidrs = [
      "0.0.0.0/0",
    ]
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
  }

  port_info {
    cidrs = [
      "0.0.0.0/0",
    ]
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
  }

}
