resource "aws_key_pair" "admin" {
  key_name   = "admin"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDENfxdQmP+DkUZTsCP/0i6dPpG3N9nX/8n3uXBSRAhuahj8DLZoh14nO+ZIMrLA2IlFbc5Lt+lx1ljLlAFZzdg0nzr5pwo66mfVhgEdyPLlAIp5XrF2SWHai0JZHyFl4obHPrLAvUeNesWksOGu2RKKIahiMjfXtyAuZEuBvLh8FDzUC375dEfPokDb789wy8hk2aNK7XL+QlUjFCCSq6O1KphXzXYBaTHQQ3D74sWAyDqSaXWE8kJi4g2jRVX+TmnNRWhYskftOqnonnBQAeGIeETJlxMOoP9UiZIZruLvXID397n+dlvbekI23sHUrWTGA7MwDeKsOw7ZAfcZf9RevwGBAuFBHKfrNT/n2YNT/SjQcE5V+ejZdU6odYJDAETdgGYrNQ7kLJAmAJekIySb+DFm7kUiA8kp7o8+blkWhBToIu3MsE9uJYrAkGBj1dw2BIwPdBHjm7tgkdLdso7hoELfDn7Wa3TuLMMe6HlVdc9w24jZQhP0zWWxHcjrC0= adelessafi@cloudaccess.local"
}

resource "aws_instance" "server1" {
  ami           = "ami-045fa58af83eb0ff4"
  instance_type = "t2.micro"
  key_name      = "admin"
}
