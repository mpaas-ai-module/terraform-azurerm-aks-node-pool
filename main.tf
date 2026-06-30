# Creates additional node pool
resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = var.vm_size
  auto_scaling_enabled  = var.enable_auto_scaling
  os_disk_size_gb       = var.os_disk_size_gb
  workload_runtime      = "OCIContainer"
  zones                 = var.zones
  node_count            = var.secondary_node_count
  min_count             = var.secondary_min_count
  max_count             = var.secondary_max_count
  max_pods              = var.secondary_max_pods
  os_sku                = var.os_sku
  vnet_subnet_id        = var.vnet_subnet_id
  priority              = var.priority
  node_labels           = var.node_labels
  node_taints           = var.node_taints
  eviction_policy       = var.eviction_policy
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}