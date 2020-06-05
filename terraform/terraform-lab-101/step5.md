Now we are ready to [apply](https://www.terraform.io/docs/commands/apply.html)
our configuration:

```
terraform apply
```{{execute}}

You will be prompted to confirm you want to apply the configuration:

```
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```

Type `yes` and hit enter.

You should see some helpful output describing what actions Terraform is taking,
including this line:

```
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

View the contents of the file with the `cat` command:

```
cat example.txt
```{{execute}}
