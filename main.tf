module "components" {

  source                = "git::https://github.com/jv2rajesh/tf-module-basic-test.git"
  for_each              = var.components

  zone_id               = var.zone_id
  security_groups       = var.security_groups
  name                  = each.value["name"]
  instance_type         = each.value["instance_type"]
}





/* source - https://developer.hashicorp.com/terraform/language/modules/sources#generic-git-repository */

/*
variable "test" {}

output "test" {
  value = var.test

}*/

/* https://developer.hashicorp.com/terraform/language/settings/backends/s3 */


/*  terraform init -backend-config=env-dev/state.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.tfvars

    rm -rf .terraform   (Need to remove .terraform directory before changing from one environment to another environment)

    terraform init -backend-config=env-prod/state.tfvars
    terraform apply -auto-approve -var-file=env-prod/main.tfvars
*/

/* started in session-29 */