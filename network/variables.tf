variable "service" {
  default = {
    name = "service_name"
  }
}

variable "region" {
  default = "ap-northeast-1"
}

variable "azs" {
  default = ["ap-northeast-1a", "ap-northeast-1c"]
}

variable "network" {
  default = {
    vpc_cider             = "10.0.0.0/16"
    public_subnet_ciders  = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnet_ciders = ["10.0.101.0/24", "10.0.102.0/24"]
  }
}
