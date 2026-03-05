# EKS Production Ready: Zero to Hero

![Difficulty](https://img.shields.io/badge/Difficulty-Beginner%20to%20Advanced-blue)
![Modules](https://img.shields.io/badge/Modules-10%20%2B%20Capstone-green)
![Time](https://img.shields.io/badge/Estimated%20Time-50%20Hours-orange)
![Hands--On](https://img.shields.io/badge/100%25-Hands--On-red)

**Deploy production-grade EKS clusters with Terraform including ALB ingress, Karpenter autoscaling, observability, security hardening, and cost optimization.**

---

## 📚 Learning Path

| # | Module | What You'll Build | Time |
|---|---|---|---|
| 01 | [EKS Architecture & Planning](modules/01-eks-architecture/) | Hands-on labs | 3-5 hrs |
| 02 | [Terraform EKS Cluster Setup](modules/02-terraform-eks-cluster/) | Hands-on labs | 3-5 hrs |
| 03 | [VPC, Subnets & Security Groups](modules/03-networking-and-vpc/) | Hands-on labs | 3-5 hrs |
| 04 | [ALB Ingress Controller](modules/04-alb-ingress-controller/) | Hands-on labs | 3-5 hrs |
| 05 | [Cluster Autoscaler & Karpenter](modules/05-cluster-autoscaler-karpenter/) | Hands-on labs | 3-5 hrs |
| 06 | [Observability (Prometheus, Grafana, CloudWatch)](modules/06-observability/) | Hands-on labs | 3-5 hrs |
| 07 | [Security Hardening & Pod Security](modules/07-security-hardening/) | Hands-on labs | 3-5 hrs |
| 08 | [Secrets Manager & IAM Roles for Service Accounts](modules/08-secrets-and-iam/) | Hands-on labs | 3-5 hrs |
| 09 | [CI/CD Deployment to EKS](modules/09-ci-cd-eks-deployment/) | Hands-on labs | 3-5 hrs |
| 10 | [Cost Optimization & Right-Sizing](modules/10-cost-optimization/) | Hands-on labs | 3-5 hrs || 🏆 | [Capstone Project](capstone/) | Production-ready project | 5 hrs |

## 🚀 Quick Start

```bash
git clone https://github.com/techlearn-center/eks-production-ready.git
cd eks-production-ready
# Follow Module 01 to get started
```

## ✔️ Validation

```bash
# Validate a specific module
bash modules/<module>/validation/validate.sh

# Validate all modules
bash scripts/validate-all.sh
```

## 💼 Portfolio

See [docs/portfolio-guide.md](docs/portfolio-guide.md) for how to showcase this project to hiring managers.

## 📖 Resources

- [Interview Questions](docs/interview-questions.md) - 50+ questions with detailed answers
- [Architecture](docs/architecture.md) - System design and diagrams
- [Troubleshooting](docs/troubleshooting.md) - Common issues and fixes
