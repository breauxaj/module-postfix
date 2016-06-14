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
postfix::aliases {
  'root': value => [ 'admin@domain.com' ]
}
```
```
postfix::config {
  'relayhost': value => 'mail.domain.com';
}
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com
