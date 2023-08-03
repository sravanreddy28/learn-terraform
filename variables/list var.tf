variable "fruits" {
  default = [
    "apple",
    "bananna",
    "mango"
  ]
  }
output "fruits" {
  value = try (var.fruits[3])
}