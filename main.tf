module "vpc" {
  source               = "./modules/vpc"
  project_id           = var.project_id
  region               = var.region
  network_name         = var.network_name
  network_name_public  = var.network_name_public
  network_name_private = var.network_name_private
  subnet_public_cidr   = var.subnet_public_cidr
  subnet_private_cidr  = var.subnet_private_cidr
}

module "gke" {
  source               = "./modules/gke"
  
  gke_cluster_name     = var.gke_cluster_name
  gke_location         = var.gke_location
  network_name         = var.network_name
  network_name_private = var.network_name_private
  service_account      = var.service_account
  node_count           = var.node_count
  machine_type_node    = var.machine_type_node
  machine_disk_node    = var.machine_disk_node
}
