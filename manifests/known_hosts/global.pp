class ssh::known_hosts::global {
  $known_hosts = hiera('ssh_known_hosts_global')

  file { "/etc/ssh/ssh_known_hosts":
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("ssh/known_hosts.erb"),
  }
}
