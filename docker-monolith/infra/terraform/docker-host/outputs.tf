output "docker-host_external_ip" {
  value = "${google_compute_instance.docker-host.0.network_interface.0.access_config.0.nat_ip}"
}
