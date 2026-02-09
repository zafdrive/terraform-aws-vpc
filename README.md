## 🎯 What is terraform-aws-vpc?

**Production-grade AWS VPC Terraform module** that creates a complete **Multi-AZ network architecture** ready for real applications.

### 🏗 What This Module Creates

**Complete VPC Infrastructure (7 Resources)**:

| Layer | Components | AZs | CIDR | Internet Access |
|-------|------------|-----|------|-----------------|
| **Core** | VPC + Route Tables | 1 | `10.0.0.0/16` | N/A |
| **Public** | 3 Subnets + IGW | a/b/c | `10.0.101.0/24`<br>`10.0.102.0/24`<br>`10.0.103.0/24` | ✅ **Direct** |
| **Private** | 3 Subnets + NAT | a/b/c | `10.0.1.0/24`<br>`10.0.2.0/24`<br>`10.0.3.0/24` | 🔒 **Outbound Only** |

### 🌐 Production Network Architecture

INTERNET (443/80)
↓ Internet Gateway (IGW)
┌──────────────────────┬──────────────────────┐
│ PUBLIC SUBNETS │ PRIVATE SUBNETS │
│ - ALB Load Balancer │ - k3s Worker Nodes │
│ - Nginx Proxy │ - FastAPI Services │
│ - Bastion SSH │ - PostgreSQL RDS │
│ │ - Redis Cache │
└──────────┬───────────┘ ↑ Outbound Only
↓ NAT Gateway │ (yum/docker pull)

### 📤 Terraform Outputs (Production Ready)

| Output | Value Example | Used By |
|--------|---------------|---------|
| `vpc_id` | `vpc-0abcdef1234567890` | EKS, VPC Peering, Security Groups |
| `public_subnets` | `["subnet-aaa","subnet-bbb","subnet-ccc"]` | ALB Target Groups, Bastion Hosts |
| `private_subnets` | `["subnet-111","subnet-222","subnet-333"]` | k3s Node Groups, ECS Fargate, RDS |
| `nat_public_ip` | `["3.123.45.67"]` | Firewall Whitelisting |

### ✅ Production Features
