| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.


## S3 Remote State Example

This folder contains example [Terraform](https://www.terraform.io/) configuration that create an 
[S3](https://aws.amazon.com/s3/) bucket and [DynamoDB](https://aws.amazon.com/dynamodb/) table in an 
[Amazon Web Services (AWS) account](http://aws.amazon.com/). The S3 bucket and DynamoDB table can be used as a 
[remote backend for Terraform](https://www.terraform.io/docs/backends/).

## Prerequisites


This guide assumes that you use MacOS and already have the following:

- Git installed and configured 

- AWS cred set by environmental variables

- Terraform version 1.8.4 installed

## Github

### Clone the repository:
```
git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git
```

Change directory to Change directory to the current exercise:
```
cd terraform_up_and_running_exercises/03-terraform-state/file-layout-example/global/s3
```

Specify a bucket name and dynamoDB table name. Open variables tfvars file with a text editor:
```
vim variables.auto.tfvars
```

Add a bucket name. This name must be unique globally.
Add a table name.

```
bucket_name = "<YOUR BUCKET NAME>"
table_name  = "<YOUR TABLE NAME>"
```

Save your changes.


## Terraform

Run terraform init, type:
```
terraform init
```

Run terraform apply, type:

```
terraform apply
```

- type **yes** when you are prompted for confirmation:




Clean up when you are done, type:

```
terraform destroy
```
- Type yes, when prompted:


Wait for the resources to be destroyed

