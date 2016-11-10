# Terraform-ize Docker Host
Terraform-ize deploying a standalone Ubuntu 16.04 Docker host on AWS. Deploying a Ubuntu based Docker host can be [tedious](https://docs.docker.com/engine/installation/linux/ubuntulinux/) and errorprone. This repository (extended from [example](https://github.com/hashicorp/terraform/tree/master/examples/aws-eip) in official Terraform) aims to automate these manual steps for quick prototyping. The provisioning is kept very generic so that it can be easily extended for many common purposes.

### Prerequsite
1. Terraform is installed
2. AWS credentials configured

### Quickstart
1. Clone this repository
2. `cd` to `ubuntu` directory and customizatize `*.tf` (e.g. Security groups, intance name, region, AMIs, etc.) file and `userdata.sh` as needed.
3. `terraform plan` # Review resources to be provisioned
4. `terraform apply` # Provide your AWS SSH key name when prompted assuming you have configured a ssh key-pair previously under appropriate region
5. `ssh -i </path/to/aws-key.pem> ubuntu@<elasic ip>` # Find Elastic IP from previous step.

