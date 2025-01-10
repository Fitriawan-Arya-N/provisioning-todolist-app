resource "google_compute_network" "vpc_network" {
    name                        = var.network_name
    auto_create_subnetworks     = true
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

