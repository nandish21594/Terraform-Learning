# Terraform-Learning
Explore and experiment with Terraform code samples. Build your infrastructure as code skills with curated collection of Terraform modules and templates.


Terraform is an open-source infrastructure as code software tool created by HashiCorp. It enables users to define and provision data center infrastructure using a declarative configuration language.

## Features

- **Infrastructure as Code (IaC)**: Define infrastructure using code, typically written in HashiCorp Configuration Language (HCL). This code describes the desired state of the infrastructure, including resources such as virtual machines, networks, storage, and more.
- **Provisioning**: Provision and manage resources specified in configuration files across various cloud providers and on-premises infrastructure.
- **State Management**: Maintain a state file to track the current state of infrastructure and determine necessary changes.
- **Execution Plans**: Generate execution plans to outline actions Terraform will take to reach the desired state.
- **Change Automation**: Automate the process of creating, updating, or deleting resources to match the desired state.

## Getting Started

1. Install Terraform: Follow the [installation instructions](https://developer.hashicorp.com/terraform/install) and [installation cli instructions](https://learn.hashicorp.com/tutorials/terraform/install-cli).
2. Write Terraform configuration files (*.tf) defining your infrastructure.
3. Initialize a Terraform workspace: `terraform init`.
4. Generate an execution plan: `terraform plan`.
5. Apply changes to your infrastructure: `terraform apply`.


# Terraform Quick Start Guide

## Installation
**Install Terraform**: Follow the [installation instructions](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform on your system and [installation cli instructions](https://learn.hashicorp.com/tutorials/terraform/install-cli).

## Configuration
**Write Terraform Configuration Files**: Create Terraform configuration files (usually with a `.tf` extension) to define your infrastructure. These files specify the resources and their configurations that Terraform will manage.

## Workspace Initialization
**Initialize a Terraform Workspace**: After writing your Terraform configuration files, navigate to the directory containing your configuration files in the terminal and run the following command:
   ```bash
   terraform init
   ```
## Execution
**Generate an Execution Plan**: To preview the changes Terraform will make to your infrastructure before applying them, run the following command:

```bash
terraform plan
```

**Apply Changes to Your Infrastructure**: Once you've reviewed the execution plan and are satisfied with the proposed changes, apply the changes to your infrastructure by running the following command:

```bash
terraform apply
```

**Inspecting Terraform State**: Once you've reviewed the execution plan and are satisfied with the proposed changes, apply the changes to your infrastructure by running the following command:

**List Resources in Terraform State**: To see a list of resources tracked by Terraform in its state file, use the following command:

```bash
terraform state list
```

**Get Information About a Specific Resource**: To get detailed information about a particular resource tracked in the Terraform state file, use the following command:

```bash
terraform state show <resource_type>.<resource_name>
```
Replace <resource_type> with the type of the resource (e.g., azurerm_resource_group for an Azure Resource Group) and <resource_name> with the name of the resource.

**Show Detailed Representation of Current State**: To see a detailed representation of the current state of your infrastructure managed by Terraform, use the following command:

```bash
terraform show
```














## Example

```hcl
# Example Terraform configuration (main.tf)

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

References:

[Terraform Example Snippets](https://github.com/stacksimplify/hashicorp-certified-terraform-associate/tree/main)
[Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
[Terraform Registry](https://registry.terraform.io/)
[Github repo to learn terraform by stacksimplify](https://github.com/stacksimplify/hashicorp-certified-terraform-associate)

