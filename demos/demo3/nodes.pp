node 'centos' {
  class {'linux': }

}

node 'ubuntu' {
  class {'linux': }
}




class linux {

  $ntpservice = $osfamily ? {
    'redhat' => 'ntpd',
    'debian' => 'ntp',
    default  => 'ntpd',
  }

 $admintool = ['git','nano','screen']

 file {'/etc/motd':
    ensure => 'present',
    content => 'This Host is Managed by puppet.`\n',
  }

  file { '/info.txt':
    ensure => 'present',
    content => inline_template("Create by Puppet at <%= Time.now %>\n"),
  }

  package { 'ntp':
    ensure => 'installed',
  }

  package { $admintool:
    ensure => 'installed',
  }

  service { $ntpservice:
   ensure => 'running',
   enable => 'true'
  }
}

