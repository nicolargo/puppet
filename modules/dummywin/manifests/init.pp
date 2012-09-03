class dummy {
        file { "C:\temp\puppet.txt":
		ensure => present,
                source => "puppet:///dummywin/puppet.txt"
        }
}
