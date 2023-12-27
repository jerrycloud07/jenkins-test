resource "aws_instance" "webhost" {

ami = "ami-03f4878755434977f"
instance_type = "t2.micro"
vpc_security_group_ids = ["sg-09e0e9057b6ba264b"]
associate_public_ip_address = true
key_name = "test"
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
