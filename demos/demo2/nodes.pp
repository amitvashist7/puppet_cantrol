node 'centos' {
  class { 'linux': }
  class { 'apache': }
}



class linux {
 file { '/etc/motd':
    ensure => 'present',
    content => 'This Host is Managed by puppet.',
  }

  file { '/info.txt':
    ensure => 'present',
    content => inline_template("Create by Puppet at <%= Time.now %>\n"),
  }

  package { 'vim*':
    ensure => 'installed',
  }
}



