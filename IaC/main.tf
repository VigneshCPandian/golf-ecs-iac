terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket = "A-Golf-S3"
    key = "test-ecs-iac/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "A-Golf-Table"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

}

module "tf-state" {
  source = "./modules/tf-state"
  bucket_name = local.bucket_name
  table_name = local.table_name
}

module "ecrRepo" {
  source = "./modules/ecr"
  ecr_repo_name = local.ecr_repo_name
}

module "ecsCluster" {
  source = "./modules/ecs"

  a_golf_cluster = local.a_golf_cluster
  availability_zones = local.availability_zones

  a_golf_task_family = local.a_golf_task_family
  ecr_repo_url = module.ecrRepo.repository_url
  container_port = local.container_port
  a_golf_task_name  = local.a_golf_task_name
  ecs_task_execution_role_name = local.ecs_task_execution_role_name

  application_load_balancer_name = local.application_load_balancer_name
  target_group_name = local.target_group_name
  a_golf_service  = local.a_golf_service
}

#
