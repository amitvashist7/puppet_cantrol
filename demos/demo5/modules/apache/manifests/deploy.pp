class apache::deploy {
  file { '/var/www/html':
    ensure => 'directory',
    mode  => '0644',
    owner => '0',
    group => '0',
  }

  file { '/var/www/html/index.html':
    ensure => 'present',
    group => '0',
    mode => '0644',
    owner => '0',
    content => inline_template("Welcome to the world of Automation \n TimeStamp: <%= Time.now %>\n"),
  }

  file { '/var/www/html/info.html':
    ensure => 'present',
    group => '0',
    mode => '0644',
    owner => '0',
    content => template('apache/info.html.erb'),
  }
}
