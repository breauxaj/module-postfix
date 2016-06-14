define postfix::aliases (
  $value
) {
  include ::postfix

  mailalias { $title:
    recipient => $value,
    notify    => Service[$::postfix::params::postfix_service],
  }

}