# Class: postfix::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class postfix::params {
  $postfix_package_ensure = 'latest'

  case $::osfamily {
    'Debian', 'RedHat': {
      case $::operatingsystem {
        default: {
          case $::operatingsystemmajrelease {
            default: {
              $postfix_context = '/files/etc/postfix/main.cf'
              $postfix_generic = '/etc/postfix/generic'
              $postfix_package = 'postfix'
              $postfix_service = 'postfix'
            }
          }
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
