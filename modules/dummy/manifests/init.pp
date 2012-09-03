class dummy {
        file { "/etc/puppet.txt":
                owner => root,
                group => root,
                mode => 644,
                source => "puppet:///dummy/puppet.txt"
        }
}
