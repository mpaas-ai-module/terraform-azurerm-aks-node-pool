# Auto-generated producer outputs for DAG wiring (mpaas-ai-module migration).
# Exposes id / name / connection attributes other resources consume.

output "node_pool_id" {
  value = azurerm_kubernetes_cluster_node_pool.node_pool.id
}
output "node_pool_name" {
  value = azurerm_kubernetes_cluster_node_pool.node_pool.name
}
