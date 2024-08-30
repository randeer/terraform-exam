resource "local_file" "test-file" {
  content  = "This is my file"
  filename = "rashmi.txt"
}

module "our_file" {
  source    = "./module/test"
  file_name = var.file_name_from_shell
  data = var.file_date_from_shell
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
