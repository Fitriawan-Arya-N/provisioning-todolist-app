provider "google" {
    project     = var.project_id
    region      = var.region
    credentials = data.google_secret_manager_secret_version.credentials.secret_data
}

data "google_secret_manager_secret_version" "credentials" {
    secret      = var.secret_name 
    version     = "latest" 
}