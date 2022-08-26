data "http" "users" {
  for_each = toset(var.github_users)
  url      = "https://api.github.com/users/${each.value}/keys"

  request_headers = {
    Accept = "application/json"
  }
}

variable "github_users" {
  type = list(string)
}

output "keys" {
  value = [for i in data.http.users : jsondecode(i.response_body).0.key]
}

terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0.1"
    }
  }
}
