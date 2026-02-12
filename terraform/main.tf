#this tests connectivity to genesys cloud

terraform {
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.75.0"
    }
  }
}

provider "genesyscloud" {
  sdk_debug          = false
}

data "genesyscloud_auth_division_home" "home" {}

output "home_name" {
  value = data.genesyscloud_auth_division_home.home.id
}
