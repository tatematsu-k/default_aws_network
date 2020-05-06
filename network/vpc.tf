module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.33.0"

  name = var.service.name
  cidr = var.network.vpc_cider

  azs             = var.azs
  private_subnets = var.network.private_subnet_ciders
  public_subnets  = var.network.public_subnet_ciders

  # Nat gateway: One NAT Gateway per availability zone
  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true

  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    ServiceName = var.service.name
    Workspace   = terraform.workspace
  }
}
