# Manage the SSH service

class ssh {
  service {'ssh':
    ensure => runnning,
  }
  file {'/etc/ssh/sshd_config':
    source => 'puppet:///modules/ssh/sshd_config',
    notify => Service ['ssh'],
    owner  => 'root',
    group  => 'root',
  }
}
class nginx {
   package {'nginx':
      ensure => running,
      enable => true,
      require => Package ['nginx'],
   }
   file {'/etc/nginx/sites-enabled/default':
     ensure => absent,
   }
}
