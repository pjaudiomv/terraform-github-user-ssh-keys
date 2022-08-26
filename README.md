# tf-github-user-ssh-keys

### Terraform module that retrieves a list of GitHub users ssh keys.

## Requirements

| Name                                                       | Version  |
|------------------------------------------------------------|----------|
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.0.1 |

## Providers

| Name                                                 | Version  |
|------------------------------------------------------|----------|
| <a name="provider_http"></a> [http](#provider\_http) | ~> 3.0.1 |

## Resources

| Name                                                                                                    | Type        |
|---------------------------------------------------------------------------------------------------------|-------------|
| [http_http.users](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name                                                                     | Description | Type           | Default | Required |
|--------------------------------------------------------------------------|-------------|----------------|---------|:--------:|
| <a name="input_github_users"></a> [github\_users](#input\_github\_users) | n/a         | `list(string)` | n/a     |   yes    |

## Outputs

| Name                                             | Description |
|--------------------------------------------------|-------------|
| <a name="output_keys"></a> [keys](#output\_keys) | n/a         |
