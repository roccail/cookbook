include ssh
node 'demo1' {
  user {'roccail':
    ensure => present,
    comment => 'Roccail Deg',
    home => '/home/roccail',
    managehome => true, 
}
  ssh_authorized_key {'roccail_ssh':
    user => 'roccail',
    type => 'rsa',
     key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDlLmtIk6ULbTcgyhQ/L1lqyQyvZDKzaHnZUE8h1rT6pfX3JCs5gF0TEXFzQQbzNvAR5Pz/6VG40GBcPtG9FYTScZTWmWy5DDcoig4YpohP7cQnZHefVDHTdk2v3EfcB+XyF/lM9LEAoBReplNt97W7yAKgL7lXSbLzhZDPtuwehzjV2RCq54yd6imXNixwZhIgSvMwxX98U2O78aI7ctTiB2V4wC4xBZznA5WuuwX2WJrpn/a2oxJzAopPGaiI3irNHG5W/pmlaR1nqQOaz0BlbbYncCKFVGtMs1X8cGRSN9VhEpeDBOrYFVfeFLQDYcCWPEzy3DseVcvSnSMbIQkv',
}
}
