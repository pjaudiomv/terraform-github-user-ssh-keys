module "ssh_keys" {
  source       = "pjaudiomv/user-ssh-keys/github"
  version      = "1.0.0"
  github_users = ["pjaudiomv"]
}
