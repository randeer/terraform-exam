output "result" {
  value = "Your file is created."
}

output "file_name" {
  value = "Created file name is ${var.file_name} and it is ready to check."
}

output "file_data" {
  value = "The file data: ${var.data}"
}