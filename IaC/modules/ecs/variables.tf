variable "a_golf_cluster"{
    description = "ECS Cluster Name"
    type = string
}

variable "availability_zones"{
    description = "us-east-1 AZs"
    type = string
}

variable "a_golf_task_family"{
    description = "ECS task family"
    type = string
}

variable "a_golf_task_name"{
    description = "ECS task name"
    type = string
}

variable "ecr_repo_url"{
    description = "ECS repo url"
    type = string
}

variable "container_port"{
    description = "container port"
    type = number
}

variable "ecs_task_execution_role_name"{
    description = "ECS task execution role name"
    type = string
}

variable "application_load_balancer_name"{
    description = "application load balancer name"
    type = string
}

variable "target_group_name"{
    description = "target group name"
    type = string
}

variable "a_golf_service"{
    description = "a golf service"
    type = string
}