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
  value = [var.fruit_stock_with_price["apple"].stock,var.fruit_stock_with_price["bananna"].price]
}