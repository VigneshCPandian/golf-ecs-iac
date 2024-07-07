locals {
    bucket_name = "agolfs3"
    table_name = "agolftable"

    ecr_repo_name = "a-golf-ecr"

    a_golf_cluster = "a-golf-cluster"
    availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
    a_golf_task_family = "a-golf-task"
    container_port = 3000
    a_golf_task_name = "a-golf-task"
    ecs_task_execution_role_name = "demo-app-task-execution-role"

    application_load_balancer_name = "cc-demo-app-alb"
    target_group_name = "cc-demo-alb-tg"

    a_golf_service = "a-golf-app-service"
}