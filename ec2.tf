resource "aws_instance" "mi_servidor_web" {
  ami           = "ami-0c55b159cbfafe1f0" # Reemplaza con la AMI de Amazon Linux 2 de tu región
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.mi_subred.id
  security_groups = [aws_security_group.sg_web.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hola desde mi servidor web en Terraform!</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Servidor-Web-Terraform"
  }
}

output "public_ip" {
  value = aws_instance.mi_servidor_web.public_ip
}