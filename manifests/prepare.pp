class makedebianusable::prepare {
	class { "apt":
		purge  => {
			"sources.list" => true,
		},
		update => {
			frequency => 'daily',
		},
	}
	
	apt::source { 'debian_50_main':
		comment  => 'Main repository, German mirror',
		location => 'http://ftp.de.debian.org/debian/',
		release  => "${lsbdistcodename}",
		repos    => 'main non-free contrib',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_51_main_mirror':
		comment  => 'Main repository, German mirror, IPv4+IPv6',
		location => 'http://ftp2.de.debian.org/debian/',
		release  => "${lsbdistcodename}",
		repos    => 'main non-free contrib',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_60_security_mirror':
		comment  => 'Security updates, German mirror',
		location => 'http://ftp.hosteurope.de/mirror/ftp.debian.org/debian-security/',
		release  => "${lsbdistcodename}/updates",
		repos    => 'main contrib non-free',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_61_security':
		comment  => 'Security updates, updates appear here first but slow download speed',
		location => 'http://security.debian.org/',
		release  => "${lsbdistcodename}/updates",
		repos    => 'main contrib non-free',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_70_updates':
		comment  => 'jessie-updates, previously known as \'volatile\'',
		location => 'http://ftp.de.debian.org/debian/',
		release  => "${lsbdistcodename}-updates",
		repos    => 'main contrib non-free',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_71_updates_mirror':
		comment  => 'jessie-updates, previously known as \'volatile\', German mirror, IPv4+IPv6',
		location => 'http://ftp2.de.debian.org/debian/',
		release  => "${lsbdistcodename}-updates",
		repos    => 'main contrib non-free',
		include  => {
			src  => true,
			deb  => true,
		},
	}
	
	apt::source { 'debian_90_backports':
		comment  => 'jessie backports',
		location => 'http://ftp2.de.debian.org/debian/',
		release  => "${lsbdistcodename}-backports",
		repos    => 'main',
		include  => {
			src  => true,
			deb  => true,
		},
	}
}
