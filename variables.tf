variable "name" {
  description = "The name of the Node Pool which should be created within the Kubernetes Cluster. "
  type        = string
}
variable "kubernetes_cluster_id" {
  type        = string
  description = "The ID of the Kubernetes Cluster where this Node Pool should exist. r"
}
variable "vm_size" {
  type        = string
  description = "The SKU which should be used for the Virtual Machines used in this Node Pool."
}
variable "enable_auto_scaling" {
  type        = bool
  description = "Whether to enable auto-scaler."
}
variable "os_disk_size_gb" {
  description = "The Agent Operating System disk size in GB. Changing this forces a new resource to be created."
  type        = number
}
variable "zones" {
  type        = list(string)
  description = " Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created."
}
variable "secondary_node_count" {
  type        = number
  description = "The initial number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 (inclusive) for user pools and between 1 and 1000 (inclusive) for system pools and must be a value in the range min_count - max_count."
}
variable "secondary_min_count" {
  type        = number
  description = "The minimum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be less than or equal to max_count."
}
variable "secondary_max_count" {
  type        = number
  description = "The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
}
variable "secondary_max_pods" {
  type        = number
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  default     = 30
}
variable "os_sku" {
  type        = string
  description = "Specifies the OS SKU used by the agent pool. Possible values include: AzureLinux, Ubuntu, Windows2019, Windows2022. If not specified, the default is Ubuntu if OSType=Linux or Windows2019 if OSType=Windows. And the default Windows OSSKU will be changed to Windows2022 after Windows2019 is deprecated. Changing this forces a new resource to be created."

}
variable "eviction_policy" {
  type = string

}
variable "vnet_subnet_id" {
  description = "The ID of the Subnet where this Node Pool should exist."
  type        = string
}
variable "priority" {
  description = "The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are Regular and Spot. Defaults to Regular."
  type        = string

}
variable "node_taints" {
  description = "A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g key=value:NoSchedule). Changing this forces a new resource to be created."
  default     = []
  type        = list(any)
}
variable "node_labels" {
  description = " A map of Kubernetes labels which should be applied to nodes in this Node Pool."
  default     = {}
}