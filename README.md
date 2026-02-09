╭──────────────────────────────────────────────────────────────╮
│  🚀 TERRAFORM AWS VPC MODULE - PRODUCTION READY              │
├──────────────────────────────────────────────────────────────┤
│  Terraform  │  AWS  │  GitHub Actions  │  MIT License      │
╰──────────────────────────────────────────────────────────────╯

PRODUCTION VPC ARCHITECTURE (7 RESOURCES)
═══════════════════════════════════════════════════════════════════════

┌──────────────────────────────┐  ┌──────────────────────────────┐
│        INTERNET (IGW)        │  │       NAT GATEWAY            │
│                              │  │  $0.045/hr • Outbound Only   │
│  ┌──────────────┐           │  │                              │
│  │ PUBLIC (3 AZs)│           │  │  ┌──────────────┐           │
│  │ ALB/Nginx     │           │  │  │ PRIVATE (3 AZs)│           │
│  │ Bastion SSH   │ 10.0.101.x│  │  │ k3s Workers   │ 10.0.1.x │
│  │              │◄───────────┘  │  │ FastAPI/DB    │◄──────────┘
│  └──────────────┘           │  │  └──────────────┘           │
└──────────────────────────────┘  └──────────────────────────────┘

TERRAFORM OUTPUTS
═══════════════════════════════════════════════════════════════════════
 vpc_id.........vpc-0abcdef1234567890
 public_subnets.[subnet-aaa, bbb, ccc]
private_subnets.[subnet-111, 222, 333]
nat_public_ip...3.123.45.67

PRODUCTION FEATURES
═══════════════════════════════════════════════════════════════════════
✅ Multi-AZ High Availability    ✅ Official HashiCorp Module 5.9.0
✅ GitHub Actions CI/CD          ✅ AWS Provider Lock 5.100.0  
✅ Production Resource Tagging   ✅ DNS Hostnames Enabled

REAL WORLD USAGE
═══════════════════════════════════════════════════════════════════════
k3s/EKS     → Private subnets (workers)
FastAPI     → Public + ALB (load balancer)
PostgreSQL  → Private (secure database)
Nginx Proxy → Public (reverse proxy)

zafdrive.com IaC Platform
Poland DevOps 2026 🚀
═══════════════════════════════════════════════════════════════════════
