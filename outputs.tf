output "alex_airbnb_repository_name" {
  description = "Name of the alex_airbnb repository."
  value       = module.alex_airbnb_repository.repository_name
}

output "alex_airbnb_repository_url" {
  description = "URL of the alex_airbnb repository."
  value       = module.alex_airbnb_repository.repository_url
}

output "ssh_url_alex_airbnb_repository" {
  description = "SSH URL to clone the alex_airbnb repository."
  value       = module.alex_airbnb_repository.ssh_url_repository
}