provider "google" {
    project     = var.project_id
    region      = var.region
    scopes      = ["https://www.googleapis.com/auth/cloud-platform"]
}

terraform {
  backend "gcs" {
    bucket = "bucket-belajar-terraform-kubernetes"
    prefix = "terraform/state"
  }
}