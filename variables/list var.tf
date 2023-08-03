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