variable "fruits" {
  default = [
    "apple",
    "bananna"
  ]
  }
output "fruits" {
  value = var.fruits
}