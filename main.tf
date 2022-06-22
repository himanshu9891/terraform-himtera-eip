resource "aws_eip" "myeip" {
  vpc = true
  count = var.eip_count
}
