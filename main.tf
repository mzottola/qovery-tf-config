terraform {
  required_providers {
    qovery = {
      source  = "qovery/qovery"
      version = "0.37.0"
    }
  }
  required_version = "1.9.3"
}

provider "qovery" {
  token = YOUR_TOKEN
}

module environment {
  source = "./modules/environment"

  cluster_id = ""
  project_id = ""
  name       = "test"
  mode       = "DEVELOPMENT"
}

module container {
  source = "./modules/container"

  environment_id                     = module.environment.environment_id
  registry_id                        = ""
  image_name                         = "node"
  tag                                = "22-slim"
  arguments                          = []
  name                               = "test"
  memory                             = 512
  cpu                                = 500
}
