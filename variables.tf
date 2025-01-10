variable "project_id" {
    description = "ID Project GCP"
    type        = string   
}

variable "region" {
    description = "Region Project GCP"
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

variable "machine_disk_node" {
    description = "machine disk"
    type = string
}

variable "disk_type_node" {
    description = "machine disk"
    type = string
}

variable "vpc_network_id" {
    type        = string
}