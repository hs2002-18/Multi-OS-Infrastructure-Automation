[ubuntu]
${ubuntu_ip} ansible_user=ubuntu

[debian]
${debian_ip} ansible_user=admin

[amazonlinux]
${amazonlinux_ip} ansible_user=ec2-user

[all:vars]
ansible_ssh_private_key_file=~/.ssh/terraform-key
ansible_python_interpreter=/usr/bin/python3