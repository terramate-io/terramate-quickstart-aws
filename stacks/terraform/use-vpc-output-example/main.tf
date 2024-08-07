resource "local_file" "vpc_id" {
  content              = var.vpc_id
  filename             = "${path.module}/vpc_id.txt"
  file_permission      = 0777
  directory_permission = 0777
}
