output "no-test-not-obj" {
  description = "This is value that is not taken from obj"
  value = "This is value that is not taken from obj"
}

output "from_obj" {
  description = "Value us taken from the obj"
  value = "Value from the object: ${local_file.no-test.filename}"
}