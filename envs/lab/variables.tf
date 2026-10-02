variable "aws_region" {
  description = "AWS region for the lab stack."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short name prefix for lab resources."
  type        = string
  default     = "eks-lab"
}

variable "default_tags" {
  description = "Tags applied via provider default_tags and module tags."
  type        = map(string)
  default = {
    Project   = "eks-platform-lab"
    Phase     = "A"
    ManagedBy = "terraform"
  }
}

variable "eip_keep_on_destroy" {
  description = "If true, destroy.sh will not tear down the EIP."
  type        = bool
  default     = false
}
