variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map 
    default = {
       Name = "Hello Terraform" 
       Enviroment = "dev"
       Component = "web"
       Terraform = "True"
    }
  
}

variable "sg-name" {
    type = string
    default = "roboshop-all"
  
}

variable "sg-description" {
    type = string
    default = "allow all ports"
  
}

variable "inbound-port" {
    type = number
    default = 0
  
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
  
}