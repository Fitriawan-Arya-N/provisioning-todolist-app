resource "google_compute_instance" "bastion_host" {
  name         = var.bastion_name
  machine_type = var.machine_type_bastion
  zone         = var.zone_bastion
  boot_disk {
    initialize_params {
      image = var.image_bastion
    }
  }
  network_interface {
    network = var.network_name
    subnetwork = var.network_name_public
    access_config {}
  }
  metadata_startup_script = <<-EOT
    #!/bin/bash
    echo "Hello, Bastion Host!" > /var/log/startup.log
    EOT
}