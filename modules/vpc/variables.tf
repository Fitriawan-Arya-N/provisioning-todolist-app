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



