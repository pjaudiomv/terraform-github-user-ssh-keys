# tf-github-user-ssh-keys

### Terraform module that retrieves a list of GitHub users ssh keys.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | ~> 3.0.1 |

## Resources

| Name | Type |
|------|------|
| [http_http.users](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_users"></a> [github\_users](#input\_github\_users) | A list of GitHub usernames. | `list(string)` | n/a | yes |
| <a name="input_return_all_keys"></a> [return\_all\_keys](#input\_return\_all\_keys) | By default we return only the users first ssh key, setting this to true returns all users keys. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_keys"></a> [keys](#output\_keys) | The list of all the keys. |
