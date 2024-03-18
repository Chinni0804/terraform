resource "aws_instance" "web" {
  for_each = var.instance_name
  #count = 11 #count,index  is a sepecial varaible by terfm
  ami           = var.ami_id #devops-practice
  instance_type =  each.value #var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ||  var.instance_name[count.index] == "shipping" ? "t3.small" : "t3.micro"
  tags = {
    Name = each.key #var.instance_name[count.index]
  }
}


/*  resource "aws_route53_record" "www" {
   count = 11
   zone_id = var.zone_id
   name    = "${var.instance_name[count.index]}.${var.domain_name}" # interpolation
   type    = "A"
   ttl     = 1
   records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
 } */



 resource "aws_route53_record" "www" {
   #count = 11
   for_each = aws_instance.web
   zone_id = var.zone_id
   name    = "${each.key}.${var.domain_name}" # interpolation
   type    = "A"
   ttl     = 1
   records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
 }
 


 /* output "instance_info" {
    value = aws_instance.web
   
 } */