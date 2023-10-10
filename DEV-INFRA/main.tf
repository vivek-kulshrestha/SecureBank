terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}
provider "google" {
    version = "5.1.0"
    project = "analog-provider-401506"
    region  = "asia-south1"
    zone    = "as-south1-c"
}

resource "google_storage_bucket" "bucket" {
  name                        = "analog-provider-401506-bucket2"
  project                     = "analog-provider-401506"
  location                    = "asia-south1"
    }

resource "google_compute_network" "vpc_network" {
    name = "terraform-network"
}
resource "google_compute_instance" "vm_instance" {
    name                = "terraform-instance"
    machine_type        = "f1-micro"
    tags                 = ["web", "dev"]
    boot_disk {
      initialize_params {
          image = "cos-cloud/cos-stable"
      }
    }
    network_interface {
        network = google_compute_network.vpc_network.self_link
        access_config {
            nat_ip = google_compute_address.vm_static_ip.address
        }
    }
}
resource "google_compute_address" "vm_static_ip" {
    name = "terraform-static-ip"
}