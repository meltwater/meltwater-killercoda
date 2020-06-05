[Variables](https://www.terraform.io/docs/configuration/variables.html) allow
values to be reused throughout your configuration without duplication. Add a 
new variable called `foo` to `main.tf`:

<pre class="file" data-filename="main.tf">
variable "foo" {
  description = "a variable for our template"
  default = "rose"
}
</pre>

Now change the variable passed to the `example` template from

```
foo = "rose"
```

to

```
foo = var.foo
```

Now run a `plan`:

```
terraform plan
```{{execute}}

You should see output including is line:

```
No changes. Infrastructure is up-to-date.
```

Now change the `foo` variable from

```
default = "rose"
```

to

```
default = "daisy"
```

Now run a `plan` again:

```
terraform plan
```{{execute}}

This time you should see some changes:

```
  - A rose by any other name would smell as sweet.
  + A daisy by any other name would smell as sweet.
```

Apply the changes:

```
terraform apply
```{{execute}}

Again, type `yes` when prompted.

View the contents of the file with the `cat` command:

```
cat example.txt
```{{execute}}
