module "network" {
  source       = "./modules/network"
  app_port     = var.app_port
  my_public_ip = var.my_public_ip
}

module "compute" {
  source        = "./modules/compute"
  instance_type = var.instance_type
  sg_id         = module.network.sg_id
  iam_profile   = var.iam_profile
  app_port      = var.app_port
}