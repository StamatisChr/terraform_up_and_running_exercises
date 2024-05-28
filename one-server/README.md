

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

Change directory to <repo>/one-server:

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

wait for the infrastructure creation:

```
<snip>

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:
ec2instanceurl = "http://ec2-3-12-196-86.us-east-2.compute.amazonaws.com:8080"
```


| ℹ️ Information                           | 
|------------------------------------------|
| We will use ec2instanceurl = "http://ec2-3-12-196-86.us-east-2.compute.amazonaws.com:8080"
|


Wait 2 minutes to give time to the instance to configure.

Open the url for the new instance and webserver

http://ec2-3-12-196-86.us-east-2.compute.amazonaws.com:8080

You should  see 

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

book page 38