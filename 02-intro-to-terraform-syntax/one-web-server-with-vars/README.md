| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.

## Prerequisites


This guide assumes that you use MacOS and already have the following:

- Git installed and configured 

- AWS cred set by environmental variables

- Terraform version 1.8.4 installed

### What will you do if you follow  this guide?

You will:
- clone a github repo

- run `terraform apply`

## Github

### Clone the repository:

```git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git```

Change directory to Change directory to the current exercise:

```cd terraform_up_and_running_exercises/02-intro-to-terraform-syntax/one-web-server-with-vars```

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

When the apply command completes, it will output the public IP address of the server. To test that IP:

curl http://(server_public_ip):8080/


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
