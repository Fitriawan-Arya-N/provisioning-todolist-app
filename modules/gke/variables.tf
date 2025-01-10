variable "gke_cluster_name" {
  description = "nama kluster gke yg digunakan"
  type = string
  default = "gke-cluster-todolist"
}

variable "gke_location" {
  description = "lokasi kluster gke yg digunakan"
  type = string
  default = "us-central1-f"
}

variable "machine_type_node" {
    description = "machine type"
    type = string
    default = "e2-micro"
}

variable "machine_disk_node" {
    description = "machine disk"
    type = string
    default = 20
  
}

variable "disk_type_node" {
    description = "machine disk"
    type = string
    default = "pd-balanced"
  
}

variable "node_count" {
    description = "jumlah node"
    type = string
    default = "3"
}

variable "network_name" {
  description = "Nama jaringan (VPC) untuk Bastion Host"
  type        = string
}

variable "network_name_private" {
    description = "network untuk komunikasi private"
    type = string
}

variable "service_account" {
    description = "service account terraform gcp"
    type        = string
}
