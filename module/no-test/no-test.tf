resource "local_file" "no-test" {
  filename = "notest.txt"
  content = "This is created from no variable modueles"
}