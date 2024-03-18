variable "ingress_rules" {
    default = [
        {
            description      = "Allow 80 ports"
            from_port        = 80 # 0 means all ports
            to_port          = 80 
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            description      = "Allow 443 ports"
            from_port        = 443 # 0 means all ports
            to_port          = 443 
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },

        {
            description      = "Allow 22 ports"
            from_port        = 22 # 0 means all ports
            to_port          = 22 
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }
    ]
  
}