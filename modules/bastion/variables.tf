variable "bastion_name" {
    description = "digunakan untuk mesin konfigurasi"
    type = string
    default = "my-bastion-host"
}

variable "machine_type_bastion" {
    description = "mesin yang digunakan untuk bastion"
    type = string
    default = "e2-medium"
}
variable "zone_bastion" {
    description = "zone yang digunakan untuk bastion"
    type = string
    default = "asia-southeast1-a"
}

variable "image_bastion" {
    description = "image yang digunakan untuk bastion"
    type = string
    default = "ubuntu-2204-jammy-v20241218"
}

variable "network_name" {
  description = "Nama jaringan (VPC) untuk Bastion Host"
  type        = string
}

variable "network_name_public" {
    description = "network untuk komunikasi public"
    type = string
}

