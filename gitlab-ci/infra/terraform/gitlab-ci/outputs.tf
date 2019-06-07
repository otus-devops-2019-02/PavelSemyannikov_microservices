output "gitlab-ci-external-ip" {
  value = "${google_compute_instance.gitlab-ci.network_interface.0.access_config.0.nat_ip}"
}
