variable "gcp_project" {
  description = "Google Cloud project ID where the VM instance will be created."
  type        = string
  default     = ""
}

variable "gcp_region" {
  description = "Google Cloud region where resources will be deployed."
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "Google Cloud zone where the VM instance will be created."
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "Name for the VM instance."
  type        = string
  default     = "terraform-vm"
}

variable "instance_type" {
  description = "GCP machine type for the VM."
  type        = string
  default     = "e2-micro"
}
