provider "github" {
  token        = var.github_terraform_token
  organization = "alex-airbnb"
}

module "alex_airbnb_repository" {
  source                 = "./modules/alex_airbnb_repository"
  repository_name        = "alex_airbnb"
  repository_description = "The principal repository of the alex_airbnb project."
  repository_topics      = ["circleci", "terraform"]
  repository_has_issues  = true
}

module "account_api_repository" {
  source                 = "./modules/alex_airbnb_repository"
  repository_name        = "account_api"
  repository_description = "Account API for the Account Bounded Context."
  repository_topics      = ["circleci", "golang"]
  repository_has_issues  = false
}
