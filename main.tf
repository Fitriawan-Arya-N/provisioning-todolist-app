module "vpc" {
  source               = "./modules/vpc"
  project_id           = var.project_id
  region               = var.region
  network_name         = var.network_name
}

module "gke" {
  source               = "./modules/gke"
  
  gke_cluster_name     = var.gke_cluster_name
  gke_location         = var.gke_location
  network_name         = module.vpc.vpc_network_id
  network_name_private = module.vpc.private_subnet_id
  service_account      = var.service_account
  node_count           = var.node_count
  machine_type_node    = var.machine_type_node
  machine_disk_node    = var.machine_disk_node
  disk_type_node       = var.disk_type_node 
}