variable "zone_id" {
  default = "Z05383332D04XQ1MILNHI"
}

variable "security_group" {
  default = ["sg-0ea14648eaf6add85"]
}

variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.small"
    }
    mangodb = {
      name          = "mangodb"
      instance_type = "t3.small"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.small"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
    redis = {
      name          = "redis"
      instance_type = "t3.small"
    }
    payment = {
      name          = "payment"
      instance_type = "t3.small"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t3.small"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t3.small"
    }
    user = {
      name          = "user"
      instance_type = "t3.small"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t3.small"
    }
    }
  }