# Multi-OS Infrastructure Automation using Terraform + Ansible + Docker

## 📌 Project Overview

This project demonstrates end-to-end Infrastructure Automation using:

- **Terraform** for Infrastructure Provisioning
- **Ansible** for Configuration Management
- **Docker** for Containerized Application Deployment

The infrastructure is deployed on AWS and includes multiple Linux distributions to simulate a real-world heterogeneous environment.

---

# 🏗️ Architecture

```text
                    ┌─────────────────────┐
                    │   Terraform (IaC)   │
                    └──────────┬──────────┘
                               │
                ┌──────────────┴──────────────┐
                │                             │
        ┌───────▼────────┐          ┌────────▼────────┐
        │  Control Node  │          │  Worker Nodes   │
        │    Ubuntu      │          │                 │
        └───────┬────────┘          ├─────────────────┤
                │                   │ Ubuntu Worker   │
                │ Ansible SSH       │ Debian Worker   │
                │                   │ Amazon Linux    │
                ▼                   └─────────────────┘

                    Docker + NGINX Deployment
```

---

# ⚙️ Tech Stack

| Tool | Purpose |
|------|----------|
| Terraform | Infrastructure Provisioning |
| Ansible | Configuration Management |
| Docker | Container Deployment |
| AWS EC2 | Cloud Infrastructure |
| Linux | Multi-OS Environment |

---

# 🚀 Features

- Provision EC2 instances using Terraform
- Configure Security Groups separately
- Use `for_each` in Terraform for scalable infrastructure
- Automated Ansible inventory generation
- Multi-OS support:
  - Ubuntu
  - Debian
  - Amazon Linux
- Automated Docker installation
- NGINX container deployment on all worker nodes
- SSH key-based secure access
- Modular Ansible roles structure

---

# 📁 Project Structure

```text
multi-os-infra-automation/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── security_group.tf
│   ├── outputs.tf
│   ├── inventory.tpl
│   └── terraform.tfvars
│
├── ansible/
│   ├── ansible.cfg
│   ├── inventory.ini
│   ├── playbook.yml
│   │
│   └── roles/
│       ├── common/
│       │   └── tasks/
│       │       └── main.yml
│       │
│       └── docker/
│           ├── tasks/
│           │   └── main.yml
│           │
│           └── handlers/
│               └── main.yml
│
└── README.md
```

---

# 🛠️ Infrastructure Provisioning

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Apply Infrastructure

```bash
terraform apply
```

---

# 🔐 SSH Access

## Connect to Control Node

```bash
ssh -i terraform-key ubuntu@<control-node-public-ip>
```

---

# ⚡ Run Ansible Playbook

```bash
ansible-playbook playbook.yml
```

This will:

- Install Docker
- Configure dependencies
- Start Docker service
- Deploy NGINX container on all worker nodes

---

# 🌐 Verify Deployment

Open browser:

```text
http://<worker-node-public-ip>
```

You should see:

```text
Welcome to nginx!
```

---

# 🧠 Key Learnings

- Infrastructure as Code (IaC)
- Terraform + Ansible integration
- Multi-OS automation challenges
- Docker deployment automation
- SSH key management
- Cross-platform package management
- Idempotent infrastructure practices
- Troubleshooting real-world DevOps issues

---

# ⚠️ Challenges Solved

- Docker installation differences across OS types
- Docker daemon startup failures
- SSH permission issues
- Ansible inventory configuration
- Container name conflicts
- Python Docker SDK compatibility issues

---

# 📈 Future Improvements

- Dynamic Inventory using AWS EC2 Plugin
- GitHub Actions CI/CD Pipeline
- Monitoring with Prometheus & Grafana
- Kubernetes deployment
- Terraform modules restructuring
- Auto Scaling Groups
- Load Balancer integration

---

# 👨‍💻 Resume Description

### Multi-OS Infrastructure Automation using Terraform & Ansible

- Automated provisioning of AWS EC2 infrastructure using Terraform
- Configured Ubuntu, Debian, and Amazon Linux instances using Ansible
- Deployed Dockerized NGINX containers across multiple Linux environments
- Implemented Infrastructure as Code (IaC) and configuration management best practices
- Solved real-world DevOps challenges involving Docker runtime and SSH automation

---

# 📄 License

This project is created for educational and portfolio purposes.
