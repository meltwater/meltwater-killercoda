Terraform stores the state of the resources it is managing in a
[state file](https://www.terraform.io/docs/state/index.html). By default, the
file is written to `terraform.tfstate` in the current directory. However, in
real-world use cases, it is *critical* that this file be stored in a secure
manner, and backed up in case it is lost or corrupted. Terraform provides 
multiple [backends](https://www.terraform.io/docs/backends/types/index.html) to
make this possible.

For this scenario, we will let Terraform write `terraform.tfstate` to the
current directory.
