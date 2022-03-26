variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "First-cluster"
}

variable "region" {
    description = "Region of cluster"
    default     = "ap-southeast-1"
}


variable "map_users" {
    description = "Additional IAM user"
    type        = list(object({
        userarn = string
        username= string
        groups  = list(string)
    }))

    default = [
    {
        userarn = "arn:aws:iam::615765664112:user/datpt13"
        username= "datpt13"
        groups  = ["system:masters"]
    }
    ]
}

variable "map_roles" {
    description = "Additional IAM roles"
    type        = list(object({
        rolearn     = string
        username    = string
        groups       = list(string)
    }))
    
    default = [
    {
        rolearn = "arn:aws:roles::615765664112:role/role1"
        username= "role1"
        groups  = ["system:masters"]
    }]
}

variable "map_accounts" {
    description = "Additional AWS account number add to the aws-auth configmap"
    type        = list(string)
    default     = [
        "615765664112",
    ]
}

