class makedebianusable::install {
	package { 'lsb-release':
		ensure => 'latest',
	}
	
	package { 'joe':
		ensure => 'latest',
	}
	
	package { 'screen':
		ensure => 'latest',
	}
	
	package { 'bash-completion':
		ensure => 'latest',
	}
}
