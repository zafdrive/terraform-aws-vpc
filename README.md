# 🚀 AWS VPC Module

[![Terraform](https://img.shields.io/badge/terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)][terraform] [![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)][aws] [![CI](https://github.com/zafdrive/terraform-aws-vpc/actions/workflows/terraform.yml/badge.svg)][ci]

**Production VPC**: Multi-AZ Public/Private + NAT Gateway

## 📋 Resources

| Component | Count | Access |
|-----------|-------|--------|
| VPC | 1 | 10.0.0.0/16 |
| Public Subnets | 3 | IGW |
| Private Subnets | 3 | NAT |
| NAT Gateway | 1 | Outbound |

## 📤 Outputs
| Name | Example |
|------|---------|
| vpc_id | vpc-0abc123 |
| public_subnets | subnet-aaa,bbb |
| private_subnets | subnet-111,222 |

**zafdrive.com** | **DevOps Poland 2026**
