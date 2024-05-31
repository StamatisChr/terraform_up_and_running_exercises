

| WARNING                          | 
|------------------------------------------|
| Please note that this guide will deploy real resources into your AWS account. Charges you may occur.  Keep an eye on your AWS account billing.

# Pre-requisites 
- You must have Terraform version 1.x installed on your computer.
- You must have an Amazon Web Services (AWS) account. 
- You must have git install on your computer.

This guide is written for MacOS.

# Clone the repository to your computer

Open your terminal.

Clone the repository:
```
git clone git@github.com:StamatisChr/terraform_up_and_running_exercises.git
```

Change directory to *repo*/01-why-terraform-web-server:
```
cd terraform_up_and_running_exercises/01-why-terraform-web-server
```


# Configure AWS credentials

Configure your AWS ACCESS KEY ID and  AWS SECRET ACCESS KEY as environment variables:

```
export AWS_ACCESS_KEY_ID=<paste your access key id here>
export AWS_SECRET_ACCESS_KEY=<paste your secret access key here>
```

If you use session tokens configure also your session token as environment variable:
```
export AWS_SESSION_TOKEN=<paste your session token here>
 ```


# Use Terraform

Deploy the code:
```
terraform init
```

```
terraform apply
```
- type yes when prompted:
  ``` 
  <snip>
  Plan: 1 to add, 0 to change, 0 to destroy.
  Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.
  Enter a value: 
  ```

Clean up the resources:

```
terraform destroy
```

- type yes when prompted:

  ```
  <snip>
  Plan: 0 to add, 0 to change, 1 to destroy.
  Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.
  Enter a value:    
  ```