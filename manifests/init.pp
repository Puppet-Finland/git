#
# == Class: git
#
# Install and configure Git
#
class git {
# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_git') != 'false' {
    include git::install
}
}
