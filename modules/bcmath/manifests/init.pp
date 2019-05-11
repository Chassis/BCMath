# A Chassis extension to install and configure BC Math on your Chassis server
class bcmath (
	$config,
	$path = '/vagrant/extensions/bcmath',
) {
	if ( ! empty( $config[disabled_extensions] ) and 'chassis/bcmath' in $config[disabled_extensions] ) {
		$package = absent
	} else {
		$package = latest
	}

	if versioncmp( $config[php], '5.4') <= 0 {
		$php_package = 'php5'
	} else {
		$php_package = "php${config[php]}"
	}

	package { "${php_package}-bcmath":
		ensure  => $package,
		require => [ Package["${php_package}-cli"], Package["${php_package}-fpm"] ],
		notify  => Service["${php_package}-fpm"]
	}
}
