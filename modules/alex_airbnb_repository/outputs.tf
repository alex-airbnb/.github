output "repository_name" {
    description = "Name of the GitHub repository."
    value = github_repository.alex_airbnb_repository.full_name
}

output "repository_url" {
    description = "URL of the GitHub repository."
    value = github_repository.alex_airbnb_repository.html_url
}

output "ssh_url_repository" {
    description = "SSH URL to clone the GitHub repository."
    value = github_repository.alex_airbnb_repository.ssh_clone_url
}