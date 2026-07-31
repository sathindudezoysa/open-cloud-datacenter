module "tenant_space" {
  source = "../modules/management/tenant-space"

  providers = {
    kubernetes.harvester = kubernetes.harvester
    harvester            = harvester
  }

  cluster_id   = var.harvester_cluster_name
  project_name = var.project_name

  cpu_limit     = 10
  memory_limit  = "16Gi"
  storage_limit = "128Gi"

#   create_default_namespace = false

  namespaces = {
    "ns1"  = { cpu_limit = 5, storage_limit = "64Gi" }
    "ns2"  = { cpu_limit = 2, memory_limit = "4Gi" }
  }


  group_role_bindings = [
    {
      user_principal_id = "local://u-mmurayihu4"
      role_template_id  = "rt-8d2kk"
    }
  ]

  vm_network_vlan_id = 700
}
