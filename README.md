# module-3-vpcs-1-public-subnet-2-private-subnets/google

## Description
Terraform module for VPC deployment on Google Cloud Platform

## Deployment
This module creates a topology with three virtual private clouds, one having a single public facing subnet and the other two having a single private subnet each.

## Usage
```tf
module "Vpc" {
	source = "armdupre/module-3-vpcs-1-public-subnet-2-private-subnets/google"
	PublicFirewallRuleSourceIpRanges = [ "1.1.1.1/32" ]
}
```