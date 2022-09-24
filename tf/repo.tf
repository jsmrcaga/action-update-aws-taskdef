module repo {
  # source = "git@github.com:jsmrcaga/terraform-modules//github-repo?ref=v0.0.10"
  source = "../../terraform-modules/github-repo"

  github = {
    token = var.token
  }

  name = "action-update-aws-taskdef"
  description = "A simple composite action to update & deploy a new task definition"

  topics = ["aws"]

  visibility = "public"
}
