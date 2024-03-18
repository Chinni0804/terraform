variable "instance_name" {
    type = list
    default = ["mongodb","redis","catalogue","user","cart","shipping","payment","dispatch","mysql","rabbitmq","web"]
  
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

