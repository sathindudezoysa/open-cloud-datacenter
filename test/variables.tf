variable "rancher_url" {
  description = "URL of the Rancher server"
  type        = string
}

variable "rancher_api_token" {
  description = "Rancher API token"
  type        = string
  sensitive   = true
}

variable "harvester_kubeconfig_path" {
  description = "Path to the Harvester kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "harvester_cluster_name" {
  description = "The ID/Name of the Harvester cluster in Rancher"
  type        = string
}

variable "project_name" {
  description = "Name of the tenant project/namespace"
  type        = string
}