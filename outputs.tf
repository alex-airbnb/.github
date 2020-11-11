output "alex_airbnb_repository_name" {
    description = "Name of the alex_airbnb repository."
    value = module.test_repository.full_name
}

output "alex_airbnb_repository_url" {
    description = "URL of the alex_airbnb repository."
    value = module.test_repository.html_url
}

output "ssh_url_alex_airbnb_repository" {
    description = "SSH URL to clone the alex_airbnb repository."
    value = module.test_repository.ssh_clone_url
}