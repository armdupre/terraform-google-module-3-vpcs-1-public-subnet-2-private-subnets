locals {
	ConsoleFirewallRuleName = "${local.Preamble}-console-firewall-rule"
	ConsoleFirewallRuleDirection = "INGRESS"
	ConsoleFirewallRulePriority = "1001"
	ConsoleFirewallRulePorts = [
		"22"
	]
	ConsoleFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	ConsoleFirewallRuleSourceIpRanges = [
		"35.190.247.0/24",
		"35.191.0.0/16",
		"64.233.160.0/19",
		"66.102.0.0/20",
		"66.249.80.0/20",
		"72.14.192.0/18",
		"74.125.0.0/16",
		"108.177.8.0/21",
		"108.177.96.0/19",
		"130.211.0.0/22",
		"172.217.0.0/19",
		"172.217.32.0/20",
		"172.217.128.0/19",
		"172.217.160.0/20",
		"172.217.192.0/19",
		"172.253.56.0/21",
		"172.253.112.0/20",
		"173.194.0.0/16",
		"209.85.128.0/17",
		"216.58.192.0/19",
		"216.239.32.0/19"
	]
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
	InstanceId = var.InstanceId
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	Private1VpcNetworkName = "${local.Preamble}-private1-vpc-network"
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