#plain variables

variable "fruitname"{

        default = "apple"
}
output "fruitname" {
        value = var.fruitname
}

#by own
variable "sravan" {

        default = "software engineer"
}
output "sravan" {
        value = var.sravan
}

output "fruits_output" {
        value = [var.sravan , var.fruitname]
}