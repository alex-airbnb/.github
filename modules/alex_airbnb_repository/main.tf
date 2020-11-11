resource "github_repository" "alex_airbnb_repository" {
  name        = var.repository_name
  description = var.repository_description

  has_issues   = var.repository_has_issues
  has_projects = false
  has_wiki     = false
  is_template  = false

  allow_merge_commit = false
  allow_squash_merge = var.repository_allow_squash_merge
  allow_rebase_merge = var.repository_allow_rebase_merge

  delete_branch_on_merge = true
  auto_init              = true

  topics = var.repository_topics
}

resource "github_branch_protection" "master_branch_protection" {
  repository     = github_repository.alex_airbnb_repository.name
  branch         = "master"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}

resource "github_issue_label" "feature_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "FEATURE"
  color       = "4a148c"
  description = "Change Type: FEATURE"
}

resource "github_issue_label" "fix_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "FIX"
  color       = "4a148c"
  description = "Change Type: FIX"
}

resource "github_issue_label" "breaking_change_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "BREAKING CHANGE"
  color       = "4a148c"
  description = "Change Type: BREAKING CHANGE"
}

resource "github_issue_label" "bug_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "BUG"
  color       = "b71c1c"
  description = "Bug Type: BUG"
}

resource "github_issue_label" "postmortem_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "POSTMORTEM"
  color       = "b71c1c"
  description = "Bug Type: POSTMORTEM"
}

resource "github_issue_label" "proposal_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "PROPOSAL"
  color       = "0d47a1"
  description = "Planning Document: PROPOSAL"
}

resource "github_issue_label" "feature_request_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "FEATURE REQUEST"
  color       = "0d47a1"
  description = "Planning Document: FEATURE REQUEST"
}

resource "github_issue_label" "circle_ci_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "CIRCLE CI"
  color       = "1b5e20"
  description = "Language/Tool: CIRCLE CI"
}

resource "github_issue_label" "golang_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "GOLANG"
  color       = "1b5e20"
  description = "Language/Tool: GOLANG"
}

resource "github_issue_label" "terraform_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "TERRAFORM"
  color       = "1b5e20"
  description = "Language/Tool: TERRAFORM"
}

resource "github_issue_label" "typescript_node_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "TYPESCRIPT NODE"
  color       = "1b5e20"
  description = "Language/Tool: TYPESCRIPT NODE"
}

resource "github_issue_label" "typescript_react_label" {
  repository  = github_repository.alex_airbnb_repository.name
  name        = "TYPESCRIPT REACT"
  color       = "1b5e20"
  description = "Language/Tool: TYPESCRIPT REACT"
}