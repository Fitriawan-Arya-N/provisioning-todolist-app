resource "google_container_cluster" "primary" {
    name      = var.gke_cluster_name
    location  = var.gke_location
    network    = var.vpc_network_id
    subnetwork = "default"
    
    remove_default_node_pool = true
    initial_node_count = 1
    node_config {
      service_account = var.service_account
    }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
    name            = "${var.gke_cluster_name}-preemptible-nodes"
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
