variable "gcp_project" {
  description = "Fallback Google Cloud project ID when the current workspace is not mapped to an environment."
  type        = string
  default     = ""
}

variable "project_ids" {
  description = "Map of Terraform workspace names to GCP project IDs for each environment."
  type        = map(string)
  default = {
    dev   = "dev-project1-497017"
    test  = "test-project1-497021"
    stage = "stage-project1"
    prod  = "prod-project1-497021"
  }
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
