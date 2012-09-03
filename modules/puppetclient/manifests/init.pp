class puppetclient {
	$exec1 = fqdn_rand(30)
	$exec2 = fqdn_rand(30) + 30
	cron { "puppet":
		ensure => present,
		command => "sudo puppetd --onetime --pluginsync --report --no-daemonize --preferred_serialization_format=yaml --logdest syslog > /dev/null 2>&1",
		user => 'root',
		minute => [ $exec1, $exec2 ];
	}
}
