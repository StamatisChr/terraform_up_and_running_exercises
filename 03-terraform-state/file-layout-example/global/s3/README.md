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

### What will you do if you follow  this guide?

You will:
- clone a github repo
- specify an s3 bucket name
- run `terraform apply`

## Github

### Clone the repository:

```git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git```

Change directory to Change directory to the current exercise:

```cd terraform_up_and_running_exercises/03-terraform-state/file-layout-example/global/s3```


Open variables file with a text editor:

```vim variables.tf```


Replace "terraform-up-and-running-state-hhhahjsidgtwidstam" with another name on variable called bucket_name. \
This name must be unique globally.
```
variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
  default     = "terraform-up-and-running-state-hhhahjsidgtwidstam"
}
```

Save your changes.


## Terraform

Run terraform init, type:

```terraform init```

Run terraform apply, type:

```terraform apply```

type **yes** when you are prompted for confirmation:

```
  Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```


When done, you can remove the resources with terraform destroy, type:

```
terraform destroy
```

Type yes, when prompted:
```
    Do you really want to destroy all resources?
    Terraform will destroy all your managed infrastructure, as shown above.
    There is no undo. Only 'yes' will be accepted to confirm.
    Enter a value: 
```


Wait for the resources to be destroyed


You are done. 