# Terraform VM Workspace

This workspace demonstrates how to create a simple Google Cloud Compute Engine VM instance with Terraform.

## Prerequisites

- Terraform installed: https://www.terraform.io/downloads
- Google Cloud SDK installed and authenticated: https://cloud.google.com/sdk/docs/install
- Set the active project and authenticate with Application Default Credentials:

```powershell
gcloud auth application-default login
gcloud config set project YOUR_PROJECT_ID
```

## Files

- `main.tf` - GCP provider and Compute Engine VM definition
- `variables.tf` - runtime variables for project, region, zone, instance name, and machine type
- `outputs.tf` - outputs for instance ID, public IP, and self-link
- `.gitignore` - ignores Terraform state and lock files
- `terraform.tfvars.example` - example variables file for local configuration

## Quick start

1. Initialize the workspace:

```powershell
terraform init
```

2. Create or select an environment workspace:

```powershell
terraform workspace new dev
terraform workspace select dev
```

3. Review the planned changes:

```powershell
terraform plan
```

4. Apply the configuration:

```powershell
terraform apply
```

5. Confirm with `yes` when prompted.

## Environment workspaces

This repository supports four Terraform workspaces with separate GCP projects:

- `dev`
- `test`
- `stage`
- `prod`

The active workspace determines the GCP project used by the provider. Update `project_ids` in `terraform.tfvars` or `terraform.tfvars.example` to match your actual GCP project IDs.

## Notes

- This example creates a Debian 12 VM with a public external IP in the default VPC.
- Update `variables.tf`, `terraform.tfvars`, or pass variables at runtime if you want a different project, zone, or machine type.

--extra line to check git diff
line2
line 3