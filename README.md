# 🚀 Terraform AWS VPC Module

**Production-ready AWS VPC architecture using Terraform**

This module provisions a highly available, multi-AZ AWS VPC designed for real-world production workloads. It is built on top of the official HashiCorp VPC module and follows best practices for security, availability, and CI/CD automation.

---

## 📐 Architecture Overview

**Region:** `eu-central-1`
**Availability Zones:** `eu-central-1a / 1b / 1c`

| Layer   | AZs | Internet Access | Use Case                     |
| ------- | --- | --------------- | ---------------------------- |
| VPC     | 1   | —               | Core network                 |
| Public  | 3   | ✅ Internet GW   | ALB, Nginx, Bastion SSH      |
| Private | 3   | 🔒 NAT Gateway  | k3s, App services, Databases |

---

## 🧱 What This Module Creates

* **AWS Resources:** 7
* **Outputs:**

  * `vpc_id`
  * `public_subnets[]`
  * `private_subnets[]`
* **Estimated Cost:** ~$0.045/hour (NAT Gateway)

---

## ✨ Features

* ✅ **3 Public Subnets**

  * Application Load Balancer
  * Nginx reverse proxy
  * Bastion host (SSH access)

* 🔒 **3 Private Subnets**

  * k3s worker nodes
  * FastAPI / application workloads
  * PostgreSQL (RDS-ready)

* 🌍 **Multi-AZ High Availability**

  * No single point of failure
  * Production-grade resilience

* 📦 **Official HashiCorp Module**

  * `terraform-aws-modules/vpc/aws` `v5.9.0`

* 🔐 **Locked Provider Versions**

  * AWS Provider `v5.100.0`

* 🤖 **CI/CD Ready**

  * GitHub Actions with automated Terraform validation

---

## 📦 Usage Example

```hcl
module "vpc" {
  source = "./terraform-aws-vpc"

  name = "prod-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
}
```

---

## ⚙️ Inputs

| Name                 | Description            | Type           | Default | Required |
| -------------------- | ---------------------- | -------------- | ------- | -------- |
| `name`               | VPC name               | `string`       | —       | ✅        |
| `cidr`               | VPC CIDR block         | `string`       | —       | ✅        |
| `azs`                | Availability zones     | `list(string)` | —       | ✅        |
| `public_subnets`     | Public subnet CIDRs    | `list(string)` | —       | ✅        |
| `private_subnets`    | Private subnet CIDRs   | `list(string)` | —       | ✅        |
| `enable_nat_gateway` | Enable NAT Gateway     | `bool`         | `true`  | ❌        |
| `single_nat_gateway` | Use single NAT Gateway | `bool`         | `false` | ❌        |

---

## 📤 Outputs

| Name              | Description                |
| ----------------- | -------------------------- |
| `vpc_id`          | ID of the created VPC      |
| `public_subnets`  | List of public subnet IDs  |
| `private_subnets` | List of private subnet IDs |

---

## 🛠 Module Details

* **Module Name:** `terraform-aws-vpc`
* **License:** MIT
* **CI/CD:** GitHub Actions
* **IaC Platform:** [zafdrive.com](https://zafdrive.com)

---

## 🎯 Vision

**Poland DevOps 2026**
Production Infrastructure as Code, built for scale, security, and reliability.
