locals {
  my_name = "Randeer Lalanga"
  myid = 19920310
}

output "myname" {
  value = local.my_name
}

output "myid" {
  value = local.myid
}