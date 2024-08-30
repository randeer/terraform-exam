resource "local_file" "from_module" {
  filename = var.file_name
  content  = var.data
}

/*
output "result-2" {
  value = "Your file is created."
}

output "file_data-2" {
  value = "Created file name is ${var.file_name} and it is ready to check."
}
*/