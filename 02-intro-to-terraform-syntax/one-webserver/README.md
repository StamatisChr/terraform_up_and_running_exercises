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

Change directory to repo/one-server:

```cd terraform_up_and_running_exercises/one-server```

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

```
Outputs:
public_ip = "3.133.154.182"
```


| Information                           | 
|------------------------------------------|
| We will use public_ip = "3.133.154.182" later.


Wait 2 minutes to give time to the instance to configure.

Check your webserver:
```
export PUBLIC_IP="3.133.154.182"
```

```
curl http://$PUBLIC_IP:8080/
```
- output should be:
   ```
   Hello, World
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


Wait for the resources to be destroyed:

```
<snip>

Destroy complete! Resources: 3 destroyed
```


You are done. 
