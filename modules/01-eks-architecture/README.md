# Module 01: EKS Architecture and Planning

| | |
|---|---|
| **Time** | 4 hours |
| **Difficulty** | Intermediate |

---

## Learning Objectives

- Understand EKS architecture (control plane, data plane, networking)
- Plan VPC CIDR ranges, subnet strategy, and AZ distribution
- Choose between managed node groups, Fargate, and self-managed nodes
- Understand EKS pricing model

---

## Concepts

### EKS Architecture

```
┌─────────────────────────────────────┐
│           AWS Managed               │
│  ┌──────────────────────────────┐   │
│  │     EKS Control Plane        │   │
│  │  API Server  etcd  Scheduler │   │
│  │  (Multi-AZ, auto-scaled)     │   │
│  └──────────────┬───────────────┘   │
└─────────────────┼───────────────────┘
                  │ ENI (in your VPC)
┌─────────────────┼───────────────────┐
│   Your VPC      │                   │
│  ┌──────┐  ┌──────┐  ┌──────┐      │
│  │Node 1│  │Node 2│  │Node 3│      │
│  │ AZ-a │  │ AZ-b │  │ AZ-c │      │
│  └──────┘  └──────┘  └──────┘      │
│  Private Subnets (workloads)        │
│                                     │
│  ┌──────┐  ┌──────┐  ┌──────┐      │
│  │ ALB  │  │ NAT  │  │ NAT  │      │
│  │      │  │ GW   │  │ GW   │      │
│  └──────┘  └──────┘  └──────┘      │
│  Public Subnets (load balancers)    │
└─────────────────────────────────────┘
```

### Node Type Comparison

| Type | Best For | Management |
|---|---|---|
| Managed Node Groups | General workloads | AWS manages AMI updates |
| Fargate | Serverless, batch jobs | No nodes to manage |
| Karpenter | Cost optimization | Auto-provisions optimal instances |

---

## Hands-On Lab

### Exercise 1: Review the Terraform Configuration

```bash
cd terraform/
cat main.tf           # Main configuration
cat variables.tf      # Input variables
cat modules/vpc/main.tf  # VPC with public/private subnets
cat modules/eks/main.tf  # EKS cluster and node groups
```

### Exercise 2: Plan the Deployment

```bash
# Initialize Terraform
terraform init

# See what would be created (dry run)
terraform plan

# Review the plan output - understand every resource
```

---

**Next: [Module 02 →](../02-terraform-eks-cluster/)**
