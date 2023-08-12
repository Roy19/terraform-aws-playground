resource "aws_key_pair" "ec2-ssh-key" {
  key_name   = "ec2-ssh-key"
  public_key = file("${path.module}/id_rsa.pub")
}