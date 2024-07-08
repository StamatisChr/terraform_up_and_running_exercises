| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.


## Terraform workspaces example

This folder contains an example Terraform configuration that deploys a single server using AWS EC2. 
The point of this example is to be a playground for Terraform Workspaces, so the configuration of the server will change depending on what workspace you're in.

## Prerequisites

This guide assumes that you use MacOS and already have the following:

- Git installed and configured
- AWS cred set by environmental variables
- Terraform version 1.8.4 installed

## Github

Clone the repository:

```
git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git
```
Change directory to Change directory to the current exercise:

```
cd terraform_up_and_running_exercises/03-terraform-state/workspaces-example/one-instance
```

## Terraform

Run terraform init, type:
```
terraform init
```

Run terraform apply, type:
```
terraform apply
```
- type yes when you are prompted for confirmation:

Wait for the resources to be created.

Create a new terraform workspace, type and run:
```
terraform workspace new example1
```

See the list of terraform workspaces, type:
```
terraform workspace list
```
- Example output:
```
  default
* example1
```
The “*“ symbol shows your current terraform workspace.

Run terraform apply, type:
```
terraform apply
```
- type yes when you are prompted for confirmation

Wait for the resources to be created.



Clean up 

Run terraform destroy:
```
terraform destroy
```
- type yes when you are prompted for confirmation

Wait for the resources to be deleted.


Switch to default workspace:
```
terraform workspace select default
```
- example output
```
Switched to workspace "default".
```
Run terraform destroy to destroy resources in default workspace, type:
```
terraform destroy
```
- type yes when you are prompted for confirmation

