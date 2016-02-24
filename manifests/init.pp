class nexxes_debian {
	file { '/etc/apt/sources.list':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/apt/sources.list",
	}
	
	patch::file { '/etc/inputrc':
		diff_source => "puppet:///modules/${module_name}/inputrc.patch",
	}
	
	# Joe
	package { 'joe':
		ensure => 'latest',
	}
	
	patch::file { '/etc/joe/ftyperc':
		diff_source => "puppet:///modules/${module_name}/joe/ftyperc.patch",
	}
	
	# Screen
	package { 'screen':
		ensure => 'latest',
	}
	
	patch::file { '/etc/screenrc':
		diff_source => "puppet:///modules/${module_name}/screenrc.patch",
	}
	
	# Bash
	package { 'bash-completion':
		ensure => 'latest',
	}
	
	patch::file { '/etc/bash.bashrc':
		diff_source => "puppet:///modules/${module_name}/bash.bashrc.patch",
	}
	
	file { '/etc/profile.d/aliases.bash':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/profile.d/aliases.bash",
	}
	
	file { '/etc/profile.d/history.bash':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/profile.d/history.bash",
	}
	
	file { '/etc/profile.d/prompt.bash':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/profile.d/prompt.bash",
	}
}
