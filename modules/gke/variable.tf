variable "gke_cluster_name" {
  description = "nama kluster gke yg digunakan"
  type = string
  default = "gke-cluster-todolist"
}

variable "gke_location" {
  description = "lokasi kluster gke yg digunakan"
  type = string
  default = "us-central1"
}

variable "machine_type_node" {
    description = "machine type"
    type = string
    default = "g1-small"
}

variable "machine_disk_node" {
    description = "machine disk"
    type = string
    default = "10"
  
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
