class makedebianusable {
	class {'makedebianusable::prepare': } ->
	class {'makedebianusable::install': } ->
	class {'makedebianusable::configure': }
}
