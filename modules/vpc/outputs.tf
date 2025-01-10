output "network_name" {
  value = var.network_name
}

output "vpc_network_id" {
  value = google_compute_network.vpc_network.id
}
