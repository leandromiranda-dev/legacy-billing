variable "aws_region" {
  description = "Región obligatoria de AWS Learner Lab"
  default     = "us-east-1"
}

variable "app_port" {
  description = "Puerto de la aplicación legacy-billing"
  default     = 3000
}

variable "iam_profile" {
  description = "Nombre del perfil IAM de AWS Academy"
  default     = "LabRole"
}

variable "instance_type" {
  description = "Tipo de instancia EC2 inicial"
  default     = "t2.micro"
}

variable "my_public_ip" {
  description = "IP permitida para el Security Group"
  default     = "0.0.0.0/0" 
}