terraform {
  required_providers {
    qovery = {
      source  = "qovery/qovery"
      version = "0.37.0"
    }
  }
  required_version = "1.9.3"
}

resource "qovery_container" "container" {
  environment_id = var.environment_id
  name           = var.name

  cpu    = var.cpu
  memory = var.memory

  registry_id = var.registry_id
  image_name  = var.image_name
  tag         = var.tag
  arguments   = var.arguments

  healthchecks = {}
}

