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
  network_name         = var.network_name
  service_account      = var.service_account
  node_count           = var.node_count
  machine_type_node    = var.machine_type_node
  machine_disk_node    = var.machine_disk_node
  disk_type_node       = var.disk_type_node 
  vpc_network_id       = module.vpc.vpc_network_id
  subnetwork_id        = module.vpc.gke_subnet_id
}