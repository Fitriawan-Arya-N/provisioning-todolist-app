variable "project_id" {
    description = "ID Project GCP"
    type        = string   
}

variable "region" {
    description = "Region Project GCP"
    type        = string
}

variable "secret_name" {
    description = "secret service account terraform gcp"
    type        = string
}   

variable "service_account" {
    description = "service account terraform gcp"
    type        = string
}   

//konfigurasi vpc
variable "network_name" {
    description = "nama network untuk infrastruktur"
    type = string
}

variable "network_name_public" {
    description = "network untuk komunikasi public"
    type = string
}

variable "network_name_private" {
    description = "network untuk komunikasi private"
    type = string
}

variable "subnet_public_cidr" {
  description = "CIDR range untuk subnet public"
  type        = string
}

variable "subnet_private_cidr" {
  description = "CIDR range untuk subnet private"
  type        = string
}

//konfigurasi bastion
variable "bastion_name" {
    description = "digunakan untuk mesin konfigurasi"
    type = string
}

variable "machine_type_bastion" {
    description = "mesin yang digunakan untuk bastion"
    type = string
}
variable "zone_bastion" {
    description = "zone yang digunakan untuk bastion"
    type = string
}

variable "image_bastion" {
    description = "image yang digunakan untuk bastion"
    type = string
}


//konfigurasi GKE
variable "gke_cluster_name" {
  description = "nama kluster gke yg digunakan"
  type = string
}

variable "gke_location" {
  description = "lokasi kluster gke yg digunakan"
  type = string
}

variable "machine_type_node" {
    description = "machine type"
    type = string
}

variable "node_count" {
    description = "jumlah node"
    type = string
}