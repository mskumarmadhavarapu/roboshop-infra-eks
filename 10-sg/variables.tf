variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_names" {
    type = list
    default = [
        # Databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # Frontend ALB
        "ingress_alb",
        # Bastion
        "bastion",
        # OpenVpn
        "openvpn",
        "eks_control_plane","eks_node"
    ]
}