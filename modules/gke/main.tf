resource "google_container_cluster" "primary" {
    name      = var.gke_cluster_name
    location  = var.gke_location
    network    = var.vpc_network_id
    subnetwork = var.subnetwork_id
    
    remove_default_node_pool = true
    initial_node_count = 1
    node_config {
      service_account = var.service_account
    }
}

# Node pool untuk Frontend
resource "google_container_node_pool" "frontend" {
    name            = "${var.gke_cluster_name}-frontend"
    location        = var.gke_location
    cluster         = google_container_cluster.primary.name
    node_count      = var.node_count

    node_config {
        preemptible     = true
        machine_type    = var.machine_type_node
        disk_size_gb    = var.machine_disk_node
        disk_type       = var.disk_type_node
        service_account = var.service_account
        oauth_scopes    = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }
}

# Node pool untuk Backend
resource "google_container_node_pool" "backend" {
    name            = "${var.gke_cluster_name}-backend"
    location        = var.gke_location
    cluster         = google_container_cluster.primary.name
    node_count      = var.node_count

    node_config {
        preemptible     = true
        machine_type    = var.machine_type_node
        disk_size_gb    = var.machine_disk_node
        disk_type       = var.disk_type_node
        service_account = var.service_account
        oauth_scopes    = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }
}

# Node pool untuk Database
resource "google_container_node_pool" "database" {
    name            = "${var.gke_cluster_name}-database"
    location        = var.gke_location
    cluster         = google_container_cluster.primary.name
    node_count      = var.node_count

    node_config {
        preemptible     = true
        machine_type    = var.machine_type_node
        disk_size_gb    = var.machine_disk_node
        disk_type       = var.disk_type_node
        service_account = var.service_account
        oauth_scopes    = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }
}
