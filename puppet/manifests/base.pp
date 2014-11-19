
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



node "node1.local" {

	package { [ "git", "nginx"]:
		ensure => installed
	}

}


node "node2.local" {

	package { [ "htop","curl"]:
		ensure => installed
	}

}



