
| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.


# MySQL on RDS example


This folder contains an example [Terraform](https://www.terraform.io/) configuration that deploys a MySQL database (using 
[RDS](https://aws.amazon.com/rds/) in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). 

For more info, please see Chapter 3, "How to Manage Terraform State", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

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
cd terraform_up_and_running_exercises/03-terraform-state/file-layout-example/stage/data-stores/mysql
```

## Quick start

Configure the database credentials as environment variables:

```
export TF_VAR_db_username=(desired database username)
export TF_VAR_db_password=(desired database password)
```

Open `main.tf`, uncomment the `backend` configuration, and fill in the name of your S3 bucket, DynamoDB table, and
the path to use for the Terraform state file.

Deploy the code:

```
terraform init
terraform apply
```

Clean up when you're done:

```
terraform destroy
```

