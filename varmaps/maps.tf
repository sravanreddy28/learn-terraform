variable "fruit_stock_with_price" {
  default = {
    apple={
      stock =200
      price=2
    }
    bananna={
      stock =400
      price=5
    }
}
}
output "fruit_stock_apple" {
  value = var.fruit_stock_with_price["apple"].stock
}

output "fruit_price_bananna" {
  value = var.fruit_stock_with_price["bananna"].price
}

#practice
variable "mummy" {
  default = {
    books= {
      social = 1
      price = 5
      gk = 1
      price = 2
    }
    deepu = {
      playing = friend
      writing = homework
    }
    }
  }

output "mummy" {
  value = var.mummy["books"].price
}
output "deepu" {
  value = var.mummy["books"].science
}