define postfix::generic (
  $content
) {
  include ::postfix

  file { $::postfix::params::postfix_generic:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $content,
    notify  => Exec['postmap-generic'],
    require => Package[$::postfix::params::postfix_package]
  }

  exec { 'postmap-generic':
    command     => "/usr/sbin/postmap ${::postfix::params::postfix_generic}",
    refreshonly => true,
    notify      => Service[$::postfix::params::postfix_service]
  }

}