# EKS Production Cluster - Main Configuration
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
    kubernetes = { source = "hashicorp/kubernetes", version = "~> 2.25" }
    helm = { source = "hashicorp/helm", version = "~> 2.12" }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "./modules/vpc"
  cluster_name = var.cluster_name
  region       = var.region
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids
}

module "addons" {
  source       = "./modules/addons"
  cluster_name = module.eks.cluster_name
}
