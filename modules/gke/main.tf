resource "google_container_cluster" "primary" {
    name      = var.gke_cluster_name
    location  = var.gke_location
    network   = var.network_name
    subnetwork = var.network_name_private
    
    remove_default_node_pool = true
    initial_node_count = 1
    node_config {
      service_account = var.service_account
    }
    private_cluster_config {
      enable_private_endpoint = false
      enable_private_nodes = true
      master_ipv4_cidr_block = "10.10.3.0/28"
    }
    master_authorized_networks_config {
      cidr_blocks {
        cidr_block = format("%s/32", var.bastion_nat_ip)
        display_name = "Bastion Access"
      }
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
        service_account = var.service_account
        oauth_scopes    = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }
}
