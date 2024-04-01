#!/usr/bin/env bash 
#Using puppet to connect to connect without password

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => template('module_name/ssh_config.erb'),
}

file { '/home/user/.ssh/school':
  ensure  => present,
  source  => 'puppet:///modules/module_name/school_private_key',
  mode    => '0600',
}

file { '/home/user/.ssh/config':
  ensure  => present,
  content => "Host server\n\tIdentityFile ~/.ssh/school\n\tPasswordAuthentication no\n",
}
