generate_hcl "main.tf" {
  inherit = false

  content {
    module "vpc" {
      source  = "terraform-aws-modules/vpc/aws"
      version = global.terraform.module.version.vpc

      name = global.vpc.name
      cidr = global.vpc.cidr

      azs = global.vpc.azs
      private_subnets = [
        tm_cidrsubnet(global.vpc.cidr, 8, 1),
        tm_cidrsubnet(global.vpc.cidr, 8, 2),
        tm_cidrsubnet(global.vpc.cidr, 8, 3)
      ]
      public_subnets = [
        tm_cidrsubnet(global.vpc.cidr, 8, 101),
        tm_cidrsubnet(global.vpc.cidr, 8, 102),
        tm_cidrsubnet(global.vpc.cidr, 8, 103)
      ]

      enable_nat_gateway = tm_try(global.vpc.enable_nat_gateway, true)
      enable_vpn_gateway = tm_try(global.vpc.enable_vpn_gateway, true)

      public_subnet_tags = {
        Tier = "public"
      }

      private_subnet_tags = {
        Tier = "private"
        Foo  = "bar"
      }

      tags = tm_try(global.tags, {})
    }
  }
}
