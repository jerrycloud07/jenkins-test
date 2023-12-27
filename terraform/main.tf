resource "aws_instance" "webhost" {

ami = "ami-062df10d14676e201"
instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0f73708aed121371d"]
associate_public_ip_address = true
key_name = "new2"
tags ={
  Name = "webhost"
}
user_data = <<EOF
#! /bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx 
echo "created using terraform" | sudo tee /var/www/html/index.html
EOF
}  
resource "aws_instance" "webhost" {

ami = "ami-062df10d14676e201"
instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0f73708aed121371d"]
associate_public_ip_address = true
key_name = "new2"
tags ={
  Name = "webhost"
}
user_data = <<EOF
#! /bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx 
echo "created using terraform" | sudo tee /var/www/html/index.html
EOF
}  
