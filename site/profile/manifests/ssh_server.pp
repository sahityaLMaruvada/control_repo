class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzt589cDqpUNi7itBPcZjqGWrNK9xPALF14Sq01zCCBYsOsYPXD83U9utvP95wK9iGmV8WKJ1ifXMuOML4uOZGjoAcUyTcf1ydTPTlvQ2j7ozH1C2d4Lhvlo2SbvnQsqZgmuxxJihQsft+HohYeS9QY5aqvgR1/CQmRLK44PKQ5rTn6cgtOoJfYHLUGqTYCvSQAl+UdsmytEPlz/cRsJ6C9Jp56EYVGxnEnJoWMo4px/wABGljsbBjr9ExMemePc3rhfqGREj7RNJjskGPLx38Cjq18DEiWkb4qGZlh+JhLD4v6ahqYJzv98DwJT3528xHnoNdfRyx64eKgQImS4Y1',
	}  
}
