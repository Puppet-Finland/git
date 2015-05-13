#
# == Class: git::install
#
# Install Git
#
class git::install inherits git::params {

    package { 'git-git':
        ensure => installed,
        name   => $::git::params::package_name,
    }
}
