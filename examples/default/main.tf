module "ssh_keys" {
  source       = "pjaudiomv/user-ssh-keys/github"
  version      = "1.1.0"
  github_users = ["pjaudiomv"]
}
