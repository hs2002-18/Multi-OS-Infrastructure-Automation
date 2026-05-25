output "control_node_ip" {
  value = aws_instance.control_node.public_ip
}

output "worker_public_ips" {
  value = {
    for k, v in aws_instance.workers : k => v.public_ip
  }
}