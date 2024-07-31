terraform {
  required_providers {
    qovery = {
      source  = "qovery/qovery"
      version = "0.37.0"
    }
  }
  required_version = "1.9.3"
}

resource "qovery_environment" "custom_environment" {
  project_id = var.project_id
  cluster_id = var.cluster_id

  name = var.name
  mode = var.mode
}
