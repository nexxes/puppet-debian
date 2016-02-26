class makedebianusable::configure {
	patch::file { '/etc/inputrc':
		diff_source => "puppet://$server/files/${module_name}/inputrc.patch",
	}
	
	# Joe
	patch::file { '/etc/joe/ftyperc':
		diff_source => "puppet://$server/files/${module_name}/joe/ftyperc.patch",
	}
	
	# Screen
	patch::file { '/etc/screenrc':
		diff_source => "puppet://$server/files/${module_name}/screenrc.patch",
	}
	
	# Bash
	patch::file { '/etc/bash.bashrc':
		diff_source => "puppet://$server/files/${module_name}/bash.bashrc.patch",
	}
	
	file { '/etc/profile.d/aliases.bash':
		ensure => 'present',
		source => "puppet://$server/files/${module_name}/profile.d/aliases.bash",
	}
	
	file { '/etc/profile.d/history.bash':
		ensure => 'present',
		source => "puppet://$server/files/${module_name}/profile.d/history.bash",
	}
	
	file { '/etc/profile.d/prompt.bash':
		ensure => 'present',
		source => "puppet://$server/files/${module_name}/profile.d/prompt.bash",
	}
	
	# SSH
	patch::file { '/etc/ssh/ssh_config':
		diff_source => "puppet://$server/files/${module_name}/ssh/ssh_config.patch",
	}
	
	patch::file { '/etc/ssh/sshd_config':
		diff_source => "puppet://$server/files/${module_name}/ssh/sshd_config.patch",
	}
}
