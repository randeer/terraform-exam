resource "local_file" "test-file" {
  content  = "This is my file"
  filename = "rashmi.txt"
}

module "our_file" {
  source    = "./module/test"
  file_name = var.file_name_from_shell
  data      = var.file_date_from_shell
}


output "module_data_1" {
  value = module.our_file.result
}

output "module_data_2" {
  value = module.our_file.file_name
}

output "module_data_3" {
  value = module.our_file.file_data
}


#This is how I can use module that does not have any variables
module "using_notest" {
  source = "./module/no-test"
  count  = 1
}

output "test_branch" {
  description = "This chages are initiated on test branch"
  value = "This is on test branch gain to document final"
}

module "creator" {
  source  = "app.terraform.io/rashmika/creator/file"
  version = "1.0.0"
  data = var.file_date_from_shell
}

output "private_registry_module" {
  description = "This chages are initiated on private_registry_module"
  value = "This is the file creates from private_registry_module, its name is :${module.creator.file_name}"
}
