class nexxes_debian {
	patch::file { '/etc/inputrc':
		diff_source => 'puppet:///modules/nexxes_debian/inputrc.patch'
	}
}
