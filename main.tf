terraform {
  backend "s3" {}
}

variable "test" {}

output "test" {
  value = var.test
}









/* https://developer.hashicorp.com/terraform/language/settings/backends/s3 */

/* started in session-29 */