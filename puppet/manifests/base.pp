
# service { "puppet" :
#   enable => true,
# }

# service { "nginx" :
#   enable => true,
# }
#
# package { [ "git", "mc", "nginx", "htop", "curl", "psmisc"]:
# 	ensure => installed
# }


node "mrdka.cz" {

	package { [ "git", "mc", "nginx", "htop", "curl", "psmisc"]:
		ensure => installed
	}

}



node "node1.dlc" {

	service {  "nginx":
		ensure => "running"
	}

	package { [ "git", "nginx"]:
		ensure => installed
	}

}


node "node2.dlc" {

	package { [ "htop","curl"]:
		ensure => installed
	}

}



