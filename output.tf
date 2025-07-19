output "Private1Subnet" {
	value = {
		"name" : google_compute_subnetwork.Private1Subnet.name
		"self_link" : google_compute_subnetwork.Private1Subnet.self_link
	}
}

output "Private1VpcNetwork" {
	value = {
		"id" : google_compute_network.Private1VpcNetwork.id
		"mtu" : google_compute_network.Private1VpcNetwork.mtu
		"name" : google_compute_network.Private1VpcNetwork.name
		"self_link" : google_compute_network.Private1VpcNetwork.self_link
	}
}

output "Private2Subnet" {
	value = {
		"name" : google_compute_subnetwork.Private2Subnet.name
		"self_link" : google_compute_subnetwork.Private2Subnet.self_link
	}
}

output "Private2VpcNetwork" {
	value = {
		"id" : google_compute_network.Private2VpcNetwork.id
		"mtu" : google_compute_network.Private2VpcNetwork.mtu
		"name" : google_compute_network.Private2VpcNetwork.name
		"self_link" : google_compute_network.Private2VpcNetwork.self_link
	}
}

output "PublicSubnet" {
	value = {
		"name" : google_compute_subnetwork.PublicSubnet.name
		"self_link" : google_compute_subnetwork.PublicSubnet.self_link
	}
}

output "PublicVpcNetwork" {
	value = {
		"id" : google_compute_network.PublicVpcNetwork.id
		"mtu" : google_compute_network.PublicVpcNetwork.mtu
		"name" : google_compute_network.PublicVpcNetwork.name
		"self_link" : google_compute_network.PublicVpcNetwork.self_link
	}
}