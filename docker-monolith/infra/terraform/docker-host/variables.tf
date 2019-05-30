variable project {}

variable region {
  default = "europe-west1"
}

variable zone {
  default = "europe-west1-b"
}

variable machine_type {
  default = "g1-small"
}

variable public_key_path {}

variable disk_image {}

variable instance_name {}

variable instance_tags {}

variable count {
  description = "Count of instances"
  default     = "1"
}
