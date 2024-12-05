resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.region

  # Enable IP aliasing
  ip_allocation_policy {}

  # Default node pool - disables creation
  remove_default_node_pool = true
}

# General Workloads Node Pool
resource "google_container_node_pool" "general_node_pool" {
  cluster    = google_container_cluster.gke_cluster.name
  location   = google_container_cluster.gke_cluster.location
  name       = var.general_node_pool_name

  node_config {
    machine_type = var.general_node_machine_type
    disk_size_gb = 100
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  initial_node_count = var.general_node_count
  management {
    auto_upgrade = true
    auto_repair  = true
  }
}

# CPU-Intensive Workloads Node Pool
resource "google_container_node_pool" "cpu_node_pool" {
  cluster    = google_container_cluster.gke_cluster.name
  location   = google_container_cluster.gke_cluster.location
  name       = var.cpu_node_pool_name

  node_config {
    machine_type = var.cpu_node_machine_type
    disk_size_gb = 100
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  initial_node_count = var.cpu_node_count
  management {
    auto_upgrade = true
    auto_repair  = true
  }
}
