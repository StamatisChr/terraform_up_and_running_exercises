| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.


# Web server cluster example

This folder contains an example [Terraform](https://www.terraform.io/) configuration that deploys a cluster of web servers 
(using [EC2](https://aws.amazon.com/ec2/) and [Auto Scaling](https://aws.amazon.com/autoscaling/)) and a load balancer
(using [ELB](https://aws.amazon.com/elasticloadbalancing/)) in an [Amazon Web Services (AWS) 
account](http://aws.amazon.com/). The load balancer listens on port 80 and returns the text "Hello, World" for the 
`/` URL.

For more info, please see Chapter 3, "How to Manage Terraform State", of 
*[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## Prerequisites


This guide assumes that you use MacOS and already have the following:

- Git installed and configured 
- AWS cred set by environmental variables
- Terraform version 1.8.4 installed

## Keep in mind
- You must deploy the MySQL database in [data-stores/mysql](../../data-stores/mysql) BEFORE deploying the
  configuration in this folder.

## Github

### Clone the repository:
```
git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git
```

Change directory to Change directory to the current exercise:
```
cd terraform_up_and_running_exercises/03-terraform-state/file-layout-example/stage/services/webserver-cluster
```


Please note that this code was written for Terraform 1.x.

## Quick start

In `variables.tf`, fill in the name of the S3 bucket and key where the remote state is stored for the MySQL database
(you must deploy the configuration in [data-stores/mysql](../../data-stores/mysql) first):

```hcl
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
  default     = "<YOUR BUCKET NAME>"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default     = "<YOUR STATE PATH>"
}
```

Deploy the code:

```
terraform init
terraform apply
```

When the `apply` command completes, it will output the DNS name of the load balancer. To test the load balancer:

```
curl http://<alb_dns_name>/
```

Clean up when you're done:

```
terraform destroy
```