# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
class motd {

  $motd_group = $operatingsystem ? {
    solaris => 'sys',
    default => '0',
  }

  $ascii = generate('/bin/sh', '-c', "/usr/bin/figlet -c -w 60 ${hostname}")

  file { '/etc/motd':
    ensure  => file,
    content => template("${module_name}/motd.erb"),
    owner   => '0',
    group   => $motd_group,
    mode    => '0644',
  }
}
