resource "google_compute_network" "vpc_network" {
    name                        = var.network_name
    delete_default_routes_on_create = false
    auto_create_subnetworks     = false
    routing_mode                = "REGIONAL"
}

resource "google_compute_subnetwork" "public_subnet" {
    name                   = var.network_name_public
    ip_cidr_range          = var.subnet_public_cidr
    region                 = var.region
    network                = google_compute_network.vpc_network.id
    private_ip_google_access = false
}

resource "google_compute_subnetwork" "private_subnet" {
    name                   = var.network_name_private
    ip_cidr_range          = var.subnet_private_cidr
    region                 = var.region
    network                = google_compute_network.vpc_network.id
    private_ip_google_access = false
}

resource "google_compute_firewall" "firewall_rules" {
    name    = "netdevops-firewall"
    network = google_compute_network.vpc_network.id

    allow {
      protocol = "icmp"
    }
    allow {
      protocol = "tcp"
      ports    = ["80", "8080", "1000-2000", "22", "443"]
    }
    
    source_ranges = ["0.0.0.0/0"]
}

