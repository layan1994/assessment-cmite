variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The region where the GKE cluster will be created"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "general_node_pool_name" {
  description = "The name of the general workloads node pool"
  default     = "general-node-pool"
}

variable "cpu_node_pool_name" {
  description = "The name of the CPU-intensive workloads node pool"
  default     = "cpu-intensive-node-pool"
}

variable "general_node_machine_type" {
  description = "Machine type for the general workloads node pool"
  default     = "e2-medium"
}

variable "cpu_node_machine_type" {
  description = "Machine type for the CPU-intensive node pool"
  default     = "n2-highcpu-4"
}

variable "general_node_count" {
  description = "Number of nodes in the general workloads node pool"
  default     = 3
}

variable "cpu_node_count" {
  description = "Number of nodes in the CPU-intensive node pool"
  default     = 2
}
