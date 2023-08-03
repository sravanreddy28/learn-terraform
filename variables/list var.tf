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

# calling with indexs

variable "deepu" {
  default = [
  "studying",
    "playing",
    "eating on time",
    "in bhashyam school top10"
  ]
}
output "always" {
  value = var.deepu[0]
}
output "was" {
  value = var.deepu[1]
}
output "will_be" {
  value = var.deepu[2]
}
output "studying" {
  value = var.deepu[3]
}