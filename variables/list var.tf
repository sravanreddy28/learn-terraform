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

# calling with indexes

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
#parctice

variable "mummy" {
  default = [
  "working",
    "watching",
    "cooking"
  ]
}

output "more" {
  value = "var.mummy"[0]
}
output "lite" {
  value = "var.mummy"[1]
}
output "everday" {
  value = "var.mummy"[2]
}