postfix
=======

The most common use for the installed mail tranfer agent is to relay locally
generated mail to a central smart host and aliasing root mail to a remote user.
This module performs these tasks.


Samples
-------
```
include postfix
```
```
postfix::config {
  'relayhost': value => 'mail.domain.com';
}
```
```
postfix::aliases { 'default':
  root_aliases => [ 'admin@domain.com' ]
}
```
```
postfix::service { 'default':
  ensure => running,
  enable => true
}
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com
