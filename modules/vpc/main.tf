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

resource "google_compute_router" "vpc_router" {
    name    = "netdevops-router"
    region  = var.region
    network = google_compute_network.vpc_network.id
}

resource "google_compute_router_nat" "nat_gateway" {
    name                      = "netdevops-router-nat"
    router                    = google_compute_router.vpc_router.name
    region                    = var.region
    nat_ip_allocate_option    = "AUTO_ONLY"
    source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

    subnetwork {
      name                   = google_compute_subnetwork.private_subnet.name
      source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
}
