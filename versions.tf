terraform {
  required_version = ">= 1.2"

  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "2.2.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.52.1"
    }
  }
}
