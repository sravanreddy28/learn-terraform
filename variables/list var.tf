variable "fruits" {
  default = [
    "apple",
    "bananna",
    "mango"
  ]
  }
output "fruits" {
  value = var.fruits[2]
}

#practice
variable "deepika" {
  default = [
  "studying",
  "bhashyam"
  ]
}
output "deepika" {
  value = var.deepika
}