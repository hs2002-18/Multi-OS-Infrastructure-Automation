resource "aws_instance" "control_node" {
  ami                    = "ami-0f918f7e67a3323f0"
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.multi_os_sg.id]

  tags = {
    Name       = "control-node"
    Managed_By = "Terraform"
  }
}

resource "aws_instance" "workers" {
  for_each = var.workers

  ami                    = each.value.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.multi_os_sg.id]

  tags = {
    Name       = each.key
    Managed_By = "Terraform"
  }
}

resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/inventory.tpl", {
    ubuntu_ip      = aws_instance.workers["ubuntu"].public_ip
    debian_ip      = aws_instance.workers["debian"].public_ip
    amazonlinux_ip = aws_instance.workers["amazonlinux"].public_ip
  })

  filename = "../ansible/inventory.ini"
}