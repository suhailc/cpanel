
# class to fix the hostname to fqdn value as it reverts back to shortname breaking mail for the default Cpanel mail account

class cpanel::fix_hostname_to_fqdn {

  exec { "fix_hostname_to_fqdn":
    command => "/usr/local/cpanel/bin/set_hostname ${fqdn_hostname}",
    unless  => "/usr/bin/hostname -eq ${fqdn_hostname}",
  }

}
