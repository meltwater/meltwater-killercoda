Now we have enough configuration for Terraform to write our `example.txt` file. 

Before applying our configuration, we should run a 
[plan](https://terraform.io/cli/commands/plan) to be sure Terraform
will make the changes that we expect:

```
terraform plan
```{{execute}}

You should see some helpful output describing what actions Terraform will take,
including this line:

```
Plan: 1 to add, 0 to change, 0 to destroy.
```
