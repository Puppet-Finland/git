#
# == Class: git
#
# Install and configure Git
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class git {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_git', 'true') != 'false' {
    include git::install
}
}
