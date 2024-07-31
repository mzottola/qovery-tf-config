variable "tag" {
  type = string
}
variable "environment_id" {
  type = string
}
variable "registry_id" {
  type = string
}
variable "image_name" {
  type = string
}
variable "arguments" {
  type = list(string)
}
variable "name" {
  type = string
}
variable "memory" {
  type = number
}
variable "cpu" {
  type = number
}
