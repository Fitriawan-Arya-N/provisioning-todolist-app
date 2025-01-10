variable "project_id" {
    description = "ID Project GCP"
    type        = string   
}

variable "region" {
    description = "Region Project GCP"
    type        = string
}

variable "network_name" {
    description = "nama network untuk infrastruktur"
    type = string
    default = "my-vpc-netdevops"
}

variable "network_name_public" {
    description = "network untuk komunikasi public"
    type = string
    default = "subnetwork-vpc-netdevops-public"
}

variable "network_name_private" {
    description = "network untuk komunikasi private"
    type = string
    default = "subnetwork-vpc-netdevops-private"
}

variable "subnet_public_cidr" {
  description = "CIDR range untuk subnet public"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_private_cidr" {
  description = "CIDR range untuk subnet private"
  type        = string
  default     = "10.0.0.0/24"
}


