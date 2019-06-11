terraform {}

provider "google" {
  version = "2.0.0"
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_compute_instance" "docker-host" {
  count        = "${var.count}"
  name         = "${var.instance_name}-${count.index + 1}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  tags         = ["${var.instance_tags}"]

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name    = "allow-puma-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["${var.instance_tags}"]
}

resource "google_compute_project_metadata_item" "default" {
  key   = "ssh-keys"
  value = "dockeradmin:${file("${var.public_key_path}")}"
}
