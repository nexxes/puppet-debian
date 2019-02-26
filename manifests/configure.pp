class makedebianusable::configure {
	patch::file { '/etc/inputrc':
		diff_source => "puppet:///modules/${module_name}/inputrc.patch",
	}
	
	# Joe
	patch::file { '/etc/joe/ftyperc':
		diff_source => [
			"puppet:///modules/${module_name}/${lsbdistcodename}/joe/ftyperc.patch",
			"puppet:///modules/${module_name}/joe/ftyperc.patch",
		],
	}
	
	# Screen
	patch::file { '/etc/screenrc':
		diff_source => [
			"puppet:///modules/${module_name}/${lsbdistcodename}/screenrc.patch",
			"puppet:///modules/${module_name}/screenrc.patch",
		],
	}
	
	# Bash
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
	
	# SSH
	file { '/etc/ssh/ssh_config':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/${lsbdistcodename}/ssh/ssh_config",
		notify => Service["ssh"],
	}
	
	file { '/etc/ssh/sshd_config':
		ensure => 'present',
		source => "puppet:///modules/${module_name}/${lsbdistcodename}/ssh/sshd_config",
		notify => Service["ssh"],
	}
}
