node default {
  include ::postfix

  case $::operatingsystem {
    'Amazon': {
        Package { allow_virtual => false }
    }
    default: {}
  }

  postfix::config { 'myorigin': value => 'domain.com' }
  postfix::aliases { 'root': value => 'breauxaj@gmail.com' }

}