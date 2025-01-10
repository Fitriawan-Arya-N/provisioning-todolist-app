output "network_name" {
  value = var.network_name
}

output "network_name_public" {
  value = var.network_name_public
}

output "network_name_private" {
  value = var.network_name_private
}

output "subnet_public_cidr" {
  value = var.subnet_public_cidr
}

output "subnet_private_cidr" {
  value = var.subnet_private_cidr
}

output "vpc_network_id" {
  value = google_compute_network.vpc_network.id
}

output "private_subnet_id" {
  value = google_compute_subnetwork.private_subnet.id
}