class makedebianusable::prepare {
	class { 'apt':
		purge_sources_list   => true,
		apt_update_frequency => 'daily',
	}
	
	apt::source { 'debian_01_main':
		comment  => 'Main repository, German mirror',
		location => 'http://ftp.de.debian.org/debian/',
		release  => "${lsbdistcodename}",
		repos    => 'main non-free contrib',
		include_src => true,
		include_deb => true,
	}
	
	apt::source { 'debian_02_main_mirror':
		comment  => 'Main repository, German mirror, IPv4+IPv6',
		location => 'http://ftp2.de.debian.org/debian/',
		release  => "${lsbdistcodename}",
		repos    => 'main non-free contrib',
		include_src => true,
		include_deb => true,
	}
	
	apt::source { 'debian_03_security_mirror':
		comment  => 'Security updates, German mirror',
		location => 'http://ftp.hosteurope.de/mirror/ftp.debian.org/debian-security/',
		release  => "${lsbdistcodename}/updates",
		repos    => 'main contrib non-free',
		include_src => true,
		include_deb => true,
	}
	
	apt::source { 'debian_04_security':
		comment  => 'Security updates, updates appear here first but slow download speed',
		location => 'http://security.debian.org/',
		release  => "${lsbdistcodename}/updates",
		repos    => 'main contrib non-free',
		include_src => true,
		include_deb => true,
	}
	
	apt::source { 'debian_05_updates':
		comment  => 'jessie-updates, previously known as \'volatile\'',
		location => 'http://ftp.de.debian.org/debian/',
		release  => "${lsbdistcodename}-updates",
		repos    => 'main contrib non-free',
		include_src => true,
		include_deb => true,
	}
	
	apt::source { 'debian_06_updates_mirror':
		comment  => 'jessie-updates, previously known as \'volatile\', German mirror, IPv4+IPv6',
		location => 'http://ftp2.de.debian.org/debian/',
		release  => "${lsbdistcodename}-updates",
		repos    => 'main contrib non-free',
		include_src => true,
		include_deb => true,
	}
}
