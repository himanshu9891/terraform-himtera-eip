resource "null_resource" "ipcheck" {
  triggers = {
    "ips" = join(",", aws_eip.myeip[*].public_ip)
  }
}

output "multiple_ips" {
    value = null_resource.ipcheck.triggers.ips
} 
  
