terraform {
  required_version = "~> 1.0"

  backend "remote" {
    organization = "femiwiki"

    workspaces {
      name = "google"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.71"
    }
  }
}

provider "google" {
  project = "	femiwiki-b2dad"
}
