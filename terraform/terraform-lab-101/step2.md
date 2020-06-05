A [provider](https://www.terraform.io/docs/providers/index.html) is an abstract
way of handling the underlying infrastructure and responsible for managing the
lifecycle of a resource. Providers are responsible for understanding API
interactions and exposing resources.

Providers are plugins released on a separate rhythm from Terraform itself, and
so they have their own version numbers. For production use, you should
constrain the acceptable provider versions via configuration, to ensure that
new versions with breaking changes will not be automatically installed by
Terraform in the future.

Terraform works based on configuration files, in this case `main.tf`. The
Katacoda editor on the right lets you edit the `main.tf` file.

To constrain the provider version as suggested, add a `required_providers`
block inside a `terraform` block. Let's do this for the
[template](https://www.terraform.io/docs/providers/template/index.html)
provider. Copy the code below to `main.tf`:

<pre class="file" data-filename="main.tf">
terraform {
  required_providers {
    template = "~> 2.1.2"
  }
}
</pre>

Now run [init](https://www.terraform.io/docs/commands/init.html)  and observe 
the output:

```
terraform init
```{{execute}}

You should see output including these lines:

```
- Downloading plugin for provider "template" (hashicorp/template) 2.1.2...

Terraform has been successfully initialized!
```
