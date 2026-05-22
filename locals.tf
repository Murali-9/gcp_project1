locals {
  workspace = terraform.workspace

  project_ids = {
    dev   = "your-dev-project-id"
    test  = "your-test-project-id"
    stage = "your-stage-project-id"
    prod  = "your-prod-project-id"
  }

  gcp_project = lookup(var.project_ids, local.workspace, var.gcp_project)
}
