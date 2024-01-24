# terraform-github
Repository containing IAC for Github managed by voxsmart

## Repo Structure

Terraform modules can be found in the modules directory. Each module includes a USAGE.md file, providing a description of the module and instructions for its usage.

For practical references, check out the examples folder, where you'll find sample implementations that you can use as guides

## Prerequisites

- Terraform installed on your local machine.

## Configuring Your Local Environment

- First, assign your personal GitHub token to an environment variable:
  ```bash
  export TF_VAR_GITHUB_TOKEN=<your_personal_github_token>
  ```

## Resources Creation Steps

- Navigate to the relevant dir directory to start creating resources:
  ```bash
  cd examples/<repos||teams>
  ```
- Begin by initialising the Terraform modules:
  ```bash
  terraform init
  ```
- Review proposed changes with a Terraform plan:
  ```bash
  terraform plan
  ```
- Once you're satisfied with the plan, apply the changes using Terraform:
  ```bash
  terraform apply
  ```

## Assumptions

- The examples are intended to be executed by a single user.
- The Terraform state is managed locally, without remote state features.
- Handling concurrent Terraform executions is not a concern.
- Repositories created are standalone and not based on pre-existing templates.
- Setting up branch protection rules is not required in this context.
- There is no need to establish CI/CD pipelines for these repositories.