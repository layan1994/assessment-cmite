output "gke_cluster_name" {
  description = "The name of the GKE cluster"
  value       = var.cluster_name
}

output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.gke_cluster.endpoint
}

output "general_node_pool_name" {
  description = "The name of the general workloads node pool"
  value       = var.general_node_pool_name
}

output "cpu_node_pool_name" {
  description = "The name of the CPU-intensive workloads node pool"
  value       = var.cpu_node_pool_name
}

output "gke_cluster_location" {
  description = "The location of the GKE cluster"
  value       = var.region
}
