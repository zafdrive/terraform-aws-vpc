<div align="center">

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

## ✨ Production Features
🔹 Multi-AZ HA (eu-central-1a/b/c)
🔹 HashiCorp Official Module 5.9.0
🔹 GitHub Actions CI/CD ✅
🔹 Locked AWS Provider 5.100.0
🔹 zafdrive.com IaC Platform

text

</div>

**Poland DevOps 2026** | **[zafdrive.com](https://zafdrive.com)**
