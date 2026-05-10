locals {
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
    eks_node_sg_id = local.aws_ssm_parameter.eks_node_sg_id.value
    eks_control_plane_sg_id = local.aws_ssm_parameter.eks_control_plane_sg_id.value
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = true
    }
}