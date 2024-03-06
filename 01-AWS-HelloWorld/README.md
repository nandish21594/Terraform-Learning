# Deploying EC2 Instance using Terraform

This guide provides step-by-step instructions for deploying an EC2 instance in AWS using Terraform. Follow these steps to set up and run the Terraform configuration.

## Prerequisites
- AWS account
- Terraform installed on your local machine

## Steps

### 1. Create `provider.tf` file
Create a file named `provider.tf` and define the AWS provider configuration. You can get the latest AWS provider code from the [Terraform AWS Provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs).

Example `provider.tf` content:
```hcl
provider "aws" {
  region = "eu-central-1"
}
```

### 2. Create `ec2.tf` file
Create a file named ec2.tf to define the EC2 instance configuration. Refer to the Terraform AWS EC2 documentation for syntax and configuration options. Replace the AMI ID with the one obtained from your AWS console when creating an EC2 instance manually.
Example ec2.tf content:
```hcl
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  # Other configuration options
}
```

### 3. Create `variables.tf` file
Create a file named variables.tf to define Terraform variables, including the ami_id variable for the EC2 instance. Variables allow for parameterizing your Terraform configurations and can be set in separate files or via environment variables.

```hcl
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  # Add any additional constraints or default values as needed
}
```

### 4. Update `terraform.tfvars` file
Create a file named terraform.tfvars to update Terraform variables.

```hcl
ami_id = "ami-12345678"
```




### Terraform Workflow
Follow these steps to manage your Terraform configuration:

**Write the code**: Define your infrastructure configuration in Terraform files.
**Init**: Initialize Terraform in your working directory with terraform init.
**Plan**: Review the proposed changes to your infrastructure with terraform plan.
**Apply**: Apply the changes to provision the infrastructure using terraform apply.


### Terraform Commands
Run the following commands to interact with your Terraform configuration:

* *terraform init* - Initialize the Terraform working directory.
* *terraform validate* - Check whether the configuration is valid.
* *terraform plan* - Preview the changes Terraform will make.
* *terraform apply* - Apply the changes to provision infrastructure.
* *terraform destroy -auto-approve* - Destroy all previously-created infrastructure.

Note: Always review the changes carefully before applying them, and confirm any destructive actions.


