provider "aws" {
    region = "us-east-1"
}


resource aws_key_pair "web" {
    key_name = "minikube"
    public_key = file("key/minikube.pub")
}

resource aws_instance "minikube"{

    ami = "ami-005de95e8ff495156"
    instance_type = "t3.small"
    key_name = "minikube"
    user_data = file("key/minikube.sh")

    tags = {
    Name = "minikube"
  }
}

#data "aws_instance" "minikube1" {

 #   filter {
  #  name   = "image-id"
   # values = ["ami-005de95e8ff495156"]
  #}

  #}

  output "ubuntu" {
      value = aws_instance.minikube.public_ip
  }
