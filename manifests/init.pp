#
# == Class: git
#
# Install and configure Git
#
# == Parameters
#
# [*manage*]
#   Manage Git using Puppet. Valid values are 'yes' (default) and 'no'.
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
class git
(
    $manage = 'yes'
)
{
if $manage == 'yes' {
    include ::git::install
}
}
