node linux {
	include dummy
	include puppetclient
}

node windows {
	include dummywin
}

node 'optiplex790' inherits linux {
} 

node 'lifebook' inherits linux {
}

node 'win7' inherits windows {
}
