resource "aws_instance" "webserver" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2-ssh-key.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "terraform-example"
  }
}