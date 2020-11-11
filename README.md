# .github

All the code and resources used for the organization's management of the alex-airbnb project.

[![<alex-airbnb>](https://circleci.com/gh/alex-airbnb/.github.svg?style=svg)](https://circleci.com/github/alex-airbnb/.github)


## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [GitHub Templates](#github-templates)
- [Terrafom Modules](#terraform-modules)
- [Terraform Main Module](#terraform-main-module)
- [License](#license)

## Requirements

- [Terraform >= v0.13.5](https://www.terraform.io/downloads.html)
- [GitHub Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token) with the following permissions:
  - admin:org
  - admin:public_key
  - delete_repo
  - repo
  - user 

## Installation

### Initialize the project

```sh
terraform init
```

### Install the local modules

```sh
terraform get
```

## GitHub Templates

## Terraform Modules

- [alex_airbnb_repository](./modules/alex_airbnb_repository/README.md)

## Terraform Main Module

### Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| github_terraform_token | GitHub token with the access to manage the organization. | string | - | :heavy_check_mark: |

### Outputs

| Name           | Description       |
| :---:          | :---:             |
| alex_airbnb_repository_name | Name of the alex_airbnb repository. |
| alex_airbnb_repository_url | URL of the alex_airbnb repository. |
| ssh_url_alex_airbnb_repository | SSH URL to clone the alex_airbnb repository. |

## License

**alex-airbnb** is licensed under Apache License, Version 2.0.