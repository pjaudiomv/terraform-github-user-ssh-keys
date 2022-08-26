data "http" "users" {
  for_each = toset(var.github_users)
  url      = "https://api.github.com/users/${each.value}/keys"

  request_headers = {
    Accept = "application/json"
  }
}

variable "github_users" {
  type        = list(string)
  description = "A list of GitHub usernames."
}

variable "return_all_keys" {
  type        = bool
  default     = false
  description = "By default we return only the users first ssh key, setting this to true returns all users keys."
}

locals {
  first_keys = [for i in data.http.users : jsondecode(i.response_body).0.key]
  all_keys   = [for i in flatten([for r in data.http.users : jsondecode(r.response_body)]) : i.key]
}

output "keys" {
  value       = var.return_all_keys ? local.all_keys : local.first_keys
  description = "The list of all the keys."
}

terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0.1"
    }
  }
}
