
# 🚀 Terraform AWS VPC Module

[![Terraform](https://img.shields.io/badge/terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://terraform.io)
[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=black)](https://aws.amazon.com)
[![CI](https://github.com/zafdrive/terraform-aws-vpc/actions/workflows/terraform.yml/badge.svg?branch=main)](https://github.com/zafdrive/terraform-aws-vpc/actions)
[![MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge&logo=mit)](LICENSE)

<br>

## Production AWS VPC Architecture

| **Layer** | **AZs** | **Internet** | **Use Case** |
|-----------|---------|--------------|--------------|
| VPC | 1 | - | Core Network |
| **Public** | 3 | ✅ IGW | ALB/Nginx |
| **Private** | 3 | 🔒 NAT | k3s/App/DB |

**Creates**: 7 resources | **Outputs**: vpc_id + subnets | **Cost**: $0.045/hr NAT

terraform-aws-vpc

Production Terraform module deploying a **complete AWS VPC** ready for real workloads:

✅ **3 Public Subnets** (ALB, Nginx Proxy, Bastion SSH) with direct Internet Gateway access
✅ **3 Private Subnets** (k3s workers, FastAPI apps, PostgreSQL RDS) secured via NAT Gateway  
✅ **Multi-AZ High Availability** (eu-central-1a/b/c) - zero single point of failure
✅ **Production-ready outputs**: vpc_id, public_subnets[], private_subnets[]

**GitHub Actions CI/CD** with automated validation.
**zafdrive.com IaC Platform** - Poland DevOps 2026 target.

Official HashiCorp module: terraform-aws-modules/vpc/aws 5.9.0


## ✨ Production Features
🔹 Multi-AZ HA (eu-central-1a/b/c)
🔹 HashiCorp Official Module 5.9.0
🔹 GitHub Actions CI/CD ✅
🔹 Locked AWS Provider 5.100.0
🔹 zafdrive.com IaC Platform

text

</div>

**Poland DevOps 2026** | **[zafdrive.com](https://zafdrive.com)**
