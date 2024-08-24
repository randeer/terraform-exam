resource "tls_private_key" "private-key" {
  algorithm = "RSA"
}

resource "local_file" "rashmika" {
  filename = "rashmika.txt"
  content = tls_private_key.private-key.private_key_pem
}

resource "tls_private_key" "private-key2" {
  algorithm = "RSA"
}

resource "local_file" "dilshani" {
  filename = "dilshani.txt"
  content = "Dilshani Dias"
}

variable "girl_name" {
  default = "Dilshani Dias"
  type = string
}

variable "email_id" {
  description = "This is user's sensitive data"
  sensitive = true
}

variable "my_company" {
  default = "Halexo"
  type = string
}

output "my_girl" {
  value = "My crush is ${var.girl_name} and my company is ${var.my_company}"
}

output "email_ID" {
  value = var.email_id
  sensitive = true
}
