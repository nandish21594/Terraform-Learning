# Terraform-Learning
Explore and experiment with Terraform code samples. Build your infrastructure as code skills with curated collection of Terraform modules and templates.


Terraform is an open-source infrastructure as code software tool created by HashiCorp. It enables users to define and provision data center infrastructure using a declarative configuration language.

## Features

- **Infrastructure as Code (IaC)**: Define infrastructure using code, typically written in HashiCorp Configuration Language (HCL).
- **Provisioning**: Provision and manage resources specified in configuration files across various cloud providers and on-premises infrastructure.
- **State Management**: Maintain a state file to track the current state of infrastructure and determine necessary changes.
- **Execution Plans**: Generate execution plans to outline actions Terraform will take to reach the desired state.
- **Change Automation**: Automate the process of creating, updating, or deleting resources to match the desired state.

## Getting Started

1. Install Terraform: Follow the [installation instructions](https://learn.hashicorp.com/tutorials/terraform/install-cli).
2. Write Terraform configuration files (*.tf) defining your infrastructure.
3. Initialize a Terraform workspace: `terraform init`.
4. Generate an execution plan: `terraform plan`.
5. Apply changes to your infrastructure: `terraform apply`.


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
