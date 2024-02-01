#Vpc Resources
 module "vpc" {
   vpc_id              = var.vpc_id
   vpc_name            = var.vpc_name
   app_name            = var.app_name
   app_environment     = var.app_environment
   source              = "./modules/vpc"
   vpc_cidr            = "10.0.0.0/16"
   subnet_azs          = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
   private_subnet_name = ["private_subnet_1a", "private_subnet_1b", "private_subnet_1c"]
   private_subnet_cidr = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
   public_subnet_name  = ["public_subnet_1a", "public_subnet_1b", "public_subnet_1c"]
   public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

 }

#ECS Resources
module "ecs" {
  app_name            = var.app_name
  vpc_id              = var.vpc_id
  app_environment     = var.app_environment
  source              = "./modules/ecs"
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
}

