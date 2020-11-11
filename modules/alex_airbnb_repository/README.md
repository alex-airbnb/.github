# alex_airbnb_repository

**alex_airbnb_repository** is a **Terraform** module to creates a new GitHub repository.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [License](#license)

## Requirements

- [Terraform >= v0.13.5](https://www.terraform.io/downloads.html)

## Installation

### Initialize the project

```sh
terraform init
```

### Install the local modules

```sh
terraform get
```

## Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| repository_name | Name of the GitHub repository. | string | - | :heavy_check_mark: |
| repository_description | Description of the GitHub repository. | string | - | :heavy_check_mark: |
| repository_topics | Topics of the GitHub repository. | list(string) | - | :heavy_check_mark: |
| repository_has_issues | Enable the issues in the GitHub repository. | bool | false | :x: |
| repository_allow_squash_merge | Enable squash and merge option in the GitHub repository. | bool | true | :x: |
| repository_allow_rebase_merge | Enable reabse and merge option in the GitHub repository. | bool | false | :x: |

## Outputs

| Name           | Description       |
| :---:          | :---:             |
| repository_name | Name of the GitHub repository. |
| repository_url | URL of the GitHub repository. |
| ssh_url_repository | SSH URL to clone the GitHub repository. |

## License

**alex-airbnb** is licensed under [Apache License, Version 2.0](./LICENSE).