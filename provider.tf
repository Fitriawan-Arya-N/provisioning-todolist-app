provider "google" {
    project     = var.project_id
    region      = var.region
    scopes      = ["https://www.googleapis.com/auth/cloud-platform"]
}