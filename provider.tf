provider "google" {
    project     = var.project_id
    region      = var.region
    credentials = file("/home/fitriawan-arya-n/belajar-terraform/secret/belajar-terraform-kubernetes-e9d25ffdc648.json")
}

data "google_secret_manager_secret_version" "credentials" {
    secret      = var.secret_name 
    version     = "latest" 
}