output "network_name" {
  value = var.network_name
}

output "vpc_network_id" {
  value = google_compute_network.vpc_network.id
}

output "gke_subnet_id" {
  value = google_compute_subnetwork.gke_subnet.id
}

output "gke_subnet_name" {
  value = google_compute_subnetwork.gke_subnet.name
}