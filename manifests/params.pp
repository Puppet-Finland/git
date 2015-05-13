#
# == Class: git::params
#
# Defines some variables based on the operating system
#
class git::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'git'
        }
        'Debian': {
            $package_name = 'git-core'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }
}
