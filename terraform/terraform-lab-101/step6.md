[Variables](https://terraform.io/language/values/variables) allow
values to be reused throughout your configuration without duplication. Add a 
new variable called `foo`{{}} to `~/main.tf`{{}}:

```hcl
variable "foo" {
  description = "a variable for our template"
  default = "rose"
}
```{{copy}}

Now change the variable passed to the `example` template from

```text
foo = "rose"
```

to

```text
foo = var.foo
```

Now run a `plan`{{}}:

```shell
terraform plan
```{{exec}}

You should see output including is line:

```text
No changes. Infrastructure is up-to-date.
```

Now change the `foo`{{}} variable from

```text
default = "rose"
```

to

```text
default = "daisy"
```

Now run a `plan`{{}} again:

```shell
terraform plan
```{{exec}}

This time you should see some changes:

```text
  - A rose by any other name would smell as sweet.
  + A daisy by any other name would smell as sweet.
```

Apply the changes:

```shell
terraform apply
```{{exec}}

Again, type `yes`{{}} when prompted.

View the contents of the file with the `cat`{{}} command:

```shell
cat ~/example.txt
```{{exec}}
