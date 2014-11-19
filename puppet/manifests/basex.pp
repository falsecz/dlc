
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

# import "../sbks/modules/nginx/init.pp"

node "node1.dlc" {
	# class{"rsyslog":
	# 	remote => "127.0.0.1",
	# }

	class{"hadoop2":
		core => {
			"fs.mrdka" => "hds://sdsd"
		}
	}
	class{"hadoop2::namenode":}

	# service {  "nginx":
	# 	ensure => "running"
	# }
	#
	# exec { "asas":
	# 	command => "/bin/ls q -la"
	# }
	#
	# package { [ "git", "subversion"]:
	# 	ensure => installed
	# }

}


node "node2.dlc" {

	package { [ "htop","curl"]:
		ensure => installed
	}

}



