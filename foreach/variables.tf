variable "instance_name" {
    type = map
    default = {
        mongodb = "t3.small"
        redis =  "t2.micro"
        mysql = "t3.small"
        rabbitmq = "t2.micro"
        cart = "t2.micro"
        payment = "t2.micro"
        dispatch = "t2.micro"
    }
  
}

variable "ami_id" {
    #type = string
    default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
    #type = string
    default = "Z0334486PNHI29DXXMNH"
}


variable "domain_name" {
    #type = string
    default = "cbdhaba.online"
}

