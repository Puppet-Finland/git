#
# == Class: git::install
#
# Install Git
#
class git::install {

    include git::params

    package { 'git-git':
        name => "${::git::params::package_name}",
        ensure => installed,
    }
}
