class nexxes_debian {
	patch::file { '/etc/inputrc':
		diff_source => 'puppet:///modules/nexxes_debian/inputrc.patch'
	}
	
	package { 'joe':
		ensure => 'installed',
	}
	
	patch::file { '/etc/joe/ftyperc':
		diff_source => 'puppet:///modules/nexxes_debian/joe/ftyperc.patch',
	}
}
