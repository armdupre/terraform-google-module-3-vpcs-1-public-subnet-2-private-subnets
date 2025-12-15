locals {
	ControlFirewallRuleName = "${local.Preamble}-control-firewall-rule"
	ControlFirewallRuleDirection = "INGRESS"
	ControlFirewallRulePriority = "1003"
	ControlFirewallRulePorts = "all"
	ControlFirewallRuleSourceTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	ControlFirewallRuleTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	IapFirewallRuleName = "${local.Preamble}-iap-firewall-rule"
	IapFirewallRuleDirection = "INGRESS"
	IapFirewallRulePriority = "1001"
	IapFirewallRulePorts = [
		"22",
		"3389"
	]
	IapFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	IapFirewallRuleSourceIpRanges = [
		"35.235.240.0/20"
	]
	InstanceId = var.InstanceId
	Preamble = replace("${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}", "_", "-")
	Private1VpcNetworkName = "${local.Preamble}-private1-vpc-network"
	Private1VpcNetworkMtu = var.Private1VpcNetworkMtu
	Private1SubnetName = "${local.Preamble}-private1-subnet"
	Private1SubnetIpRange = "10.0.2.0/24"
	Private1FirewallRuleName = "${local.Preamble}-private1-firewall-rule"
	Private1FirewallRuleDirection = "INGRESS"
	Private1FirewallRulePriority = "1000"
	Private1FirewallRulePorts = "all"
	Private1FirewallRuleSourceIpRanges = [
		"10.0.2.0/24",
		"10.0.3.0/24"
	]
	Private1FirewallRuleSourceTags = [
		"${local.Tag}-agent"
	]
	Private1FirewallRuleTargetTags = [
		"${local.Tag}-agent"
	]
	Private2VpcNetworkName = "${local.Preamble}-private2-vpc-network"
	Private2VpcNetworkMtu = var.Private2VpcNetworkMtu
	Private2FirewallRuleName = "${local.Preamble}-private2-firewall-rule"
	Private2FirewallRuleDirection = "INGRESS"
	Private2FirewallRulePriority = "1000"
	Private2FirewallRulePorts = "all"
	Private2FirewallRuleSourceIpRanges = [
		"10.0.2.0/24",
		"10.0.3.0/24"
	]
	Private2FirewallRuleSourceTags = [
		"${local.Tag}-agent"
	]
	Private2FirewallRuleTargetTags = [
		"${local.Tag}-agent"
	]
	Private2SubnetName = "${local.Preamble}-private2-subnet"
	Private2SubnetIpRange = "10.0.3.0/24"
	PublicVpcNetworkName = "${local.Preamble}-public-vpc-network"
	PublicVpcNetworkMtu = var.PublicVpcNetworkMtu
	PublicSubnetName = "${local.Preamble}-public-subnet"
	PublicSubnetIpRange = "10.0.10.0/24"
	PublicFirewallRuleName = "${local.Preamble}-public-firewall-rule"
	PublicFirewallRuleDirection = "INGRESS"
	PublicFirewallRulePriority = "1000"
	PublicFirewallRulePorts = var.PublicFirewallRulePorts
	PublicFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	PublicFirewallRuleSourceIpRanges = var.PublicFirewallRuleSourceIpRanges
	RegionName = var.RegionName
	Tag = var.Tag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
}