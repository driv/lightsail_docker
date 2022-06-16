output "instance_id" {
  value = aws_lightsail_instance.server.id
}

output "instance_arn" {
  value = aws_lightsail_instance.server.arn
}

output "created_at" {
  value = aws_lightsail_instance.server.created_at
}

output "ip_address" {
  value = aws_lightsail_instance.server.public_ip_address
}

output "ipv6_addresses" {
  value = aws_lightsail_instance.server.ipv6_addresses
}

output "user" {
  value = aws_lightsail_instance.server.username
}
