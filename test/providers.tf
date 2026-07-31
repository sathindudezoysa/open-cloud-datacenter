terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "~> 13.1" 
    }
    harvester = {
      source = "harvester/harvester"
      version = "~> 1.7"  
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.30"  
    }
  }
}

provider "rancher2" {
  api_url   = var.rancher_url
  token_key = var.rancher_api_token
  insecure  = false
}

provider "harvester" {
  kubeconfig = var.harvester_kubeconfig_path
}

provider "kubernetes" {
  alias       = "harvester"
  config_path = var.harvester_kubeconfig_path
}