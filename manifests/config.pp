define postfix::config (
  $value
) {
  include ::postfix

  $key = $title

  augeas { "postfix_main_cf/${key}":
    context => $::postfix::params::postfix_context,
    onlyif  => "get ${key} != '${value}'",
    changes => "set ${key} '${value}'",
    notify  => Service[$::postfix::params::postfix_service],
    require => Package[$::postfix::params::postfix_package]
  }

}
