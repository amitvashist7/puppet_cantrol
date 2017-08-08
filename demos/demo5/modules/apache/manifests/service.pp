class apache::service { 
  $httpserv= $osfamily ? {
    'redhat' => 'httpd',
    'debian' => 'apache2',
    default  =>  'httpd',
  }

  service { $httpserv:
    ensure => 'running',
    require => Package[ $httpserv ],
  }

}
