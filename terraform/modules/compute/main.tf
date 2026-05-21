data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "app_server" {
  ami                  = data.aws_ami.amazon_linux_2023.id
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_profile
  vpc_security_group_ids = [var.sg_id]

  user_data = <<-EOF
              #!/bin/bash
              # Actualizacion e instalacion usando yum para Amazon Linux 2023
              yum update -y
              yum install -y nodejs npm git

              # Clonar el repositorio y arrancar la app
              git clone https://github.com/leandromiranda-dev/legacy-billing.git /home/ec2-user/app
              cd /home/ec2-user/app
              npm install
              
              # Usamos PM2 para mantener la app viva en segundo plano
              npm install -g pm2
              pm2 start app.js --name "legacy-billing"
              EOF

  tags = {
    Name = "LegacyBilling-Server"
  }
}