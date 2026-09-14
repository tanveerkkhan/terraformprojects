output "public_ip" {
  value = aws_instance.ec2_example.public_ip   # adjust resource name to match what's in mod/ec2.tf
}