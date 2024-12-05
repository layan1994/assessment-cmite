# Output the GKE cluster name
output "gke_cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.gke_cluster.name
}

# Output the GKE cluster endpoint (API server URL)
output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.gke_cluster.endpoint
}

# Output the node pools' names
output "general_node_pool_name" {
  description = "The name of the general workloads node pool"
  value       = google_container_node_pool.general_node_pool.name
}

output "cpu_intensive_node_pool_name" {
  description = "The name of the CPU-intensive workloads node pool"
  value       = google_container_node_pool.cpu_intensive_node_pool.name
}

# Output the cluster location
output "gke_cluster_location" {
  description = "The location of the GKE cluster"
  value       = google_container_cluster.gke_cluster.location
}
