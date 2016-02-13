class nexxes_debian {
	patch::file { '/etc/inputrc':
		diff_source => 'puppet:///modules/nexxes_debian/inputrc.patch',
	}
	
	# Joe
	package { 'joe':
		ensure => 'latest',
	}
	
	patch::file { '/etc/joe/ftyperc':
		diff_source => 'puppet:///modules/nexxes_debian/joe/ftyperc.patch',
	}
	
	# Screen
	package { 'screen':
		ensure => 'latest',
	}
	
	patch::file { '/etc/screenrc':
		diff_source => 'puppet:///modules/nexxes_debian/screenrc.patch',
	}
	
	# Bash
	package { 'bash-completion':
		ensure => 'latest',
	}
	
	patch::file { '/etc/bash.bashrc':
		diff_source => 'puppet:///modules/nexxes_debian/bash.bashrc.patch',
	}
	
	file { '/etc/profile.d/aliases.bash':
		ensure => 'present',
		source => 'puppet:///modules/nexxes_debian/profile.d/aliases.bash',
	}
	
	file { '/etc/profile.d/history.bash':
		ensure => 'present',
		source => 'puppet:///modules/nexxes_debian/profile.d/history.bash',
	}
	
	file { '/etc/profile.d/prompt.bash':
		ensure => 'present',
		source => 'puppet:///modules/nexxes_debian/profile.d/prompt.bash',
	}
}
