module "gcs_bucket" {
  source              = "./modules/gcs"
  gcs_bucket_name     = var.gcs_bucket_name
  gcs_bucket_location = var.gcs_bucket_location
  gcs_bucket_class    = var.gcs_bucket_class
}

module "vpc_network" {
  source   = "./modules/vpc"
  vpc_name = var.vpc_name
}

module "subnet" {
  depends_on     = [module.vpc_network]
  source         = "./modules/subnet"
  subnet_name_01 = var.subnet_name_01
  subnet_cidr_01 = var.subnet_cidr_01
  region         = var.region
  vpc_name       = var.vpc_name
}

module "compute_engine" {
  depends_on     = [module.subnet]
  source         = "./modules/gce"
  compute_name   = var.compute_name
  subnet_name_01 = var.subnet_name_01
}

output "vm_ip" {
  value = module.compute_engine.vm_ip
}

output "vm_zone" {
  value = module.compute_engine.vm_zone
}