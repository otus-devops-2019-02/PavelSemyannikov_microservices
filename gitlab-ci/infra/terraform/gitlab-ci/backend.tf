terraform {
  backend "gcs" {
    bucket = "storage-bucket-pavel-s-otus-devops-states"
    prefix = "gitlab-ci"
  }
}
