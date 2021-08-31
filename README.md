# terraform-scenario-1
This repository contains the code to provision infrastructure in AWS using Terraform.

## Scenario: Creating AWS EBS and attaching it to AWS EC2.

1. Create a key pair
2. Create a security group
3. Launch an instance using the above created key pair and security group.
4. Create an EBS volume of 1 GB and attach it to the  instance created.

### For recreating the same scenario for yourself. Do the following:
1. Clone the repository
2. cd terraform-scenario-1
3. Update your aws credentials in /.aws/credentials file
4. Perform the following steps:


``` terraform init ```

This command initializes the terraform the configuration file present in the present directory and downloads all the plugins used in the configuration file. In our case it uses the providers.tf file.

``` terraform validate ```

This command is used to check if the syntax of the configuration files is correct or not.

``` terraform plan ```

This command performs a dry run and shows us what changes will occur when the configuration files are implemented. This is not a mandatory step because this command is triggered by default if terraform apply command is used.

``` terraform apply --auto-approve ```

This command that is used to implement/create resources as written in terraform configuration file.
