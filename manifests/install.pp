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
	
	package { 'bash':
		ensure => 'latest',
	}
	
	package { 'bash-completion':
		ensure => 'latest',
	}
	
	package { 'openssh-server':
		ensure => 'latest',
	}
	
	service { 'ssh':
		ensure => 'running',
		enables => true,
		require => Package['openssh-server'],
	}
}
