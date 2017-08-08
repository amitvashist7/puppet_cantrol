class apache::install {
  $httppkg = $osfamily ? {
    'redhat' => 'httpd',
    'debian' => 'apache',
    default  =>  'httpd',
  }

  package { $httppkg:
    ensure => 'installed',
  }
}
