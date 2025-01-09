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

module "bastion" {
  source               = "./modules/bastion"
  bastion_name         = var.bastion_name
  machine_type_bastion = var.machine_type_bastion
  zone_bastion         = var.zone_bastion
  image_bastion        = var.image_bastion
  network_name         = var.network_name
  network_name_public  = var.network_name_public
}

module "gke" {
  source               = "./modules/gke"
  
  gke_cluster_name     = var.gke_cluster_name
  gke_location         = var.gke_location
  network_name         = var.network_name
  network_name_private = var.network_name_private
  service_account      = var.service_account
  bastion_nat_ip       = module.bastion.bastion_nat_ip
  node_count           = var.node_count
  machine_type_node    = var.machine_type_node
}
