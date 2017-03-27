node default {
  include ::postfix

  postfix::config { 'myorigin': value => 'domain.com' }
  postfix::aliases { 'root': value => 'breauxaj@gmail.com' }

}