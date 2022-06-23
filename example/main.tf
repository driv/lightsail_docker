module "lightsail" {
    source = "../"
    extra_user_data = local.extra_commands
}

locals {
  extra_commands = templatefile("echo_something", {echo_value: "value1"})
}