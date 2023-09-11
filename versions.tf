terraform {
  required_version = ">= 1.2"

  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.3.2"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.24.0"
    }
  }
}
