# @summary A short summary of the purpose of this class
#   Operating system related variables
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  $install_ensure = 'present'
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2'
    }
  }
}
