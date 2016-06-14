define postfix::config (
  $value
) {
  include ::postfix

  $key = $title

  augeas { "postfix_main_cf/${key}":
    context => $::postfix::params::postfix_context,
    onlyif  => "get ${key} != '${value}'",
    changes => "set ${key} '${value}'",
    notify  => Exec['sysctl'],
  }

}