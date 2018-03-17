
# class to install cpanel on fresh OS

class cpanel::install {

  package { "perl": ensure => "installed"}
	
  exec { "install_cpanel":
    cwd => "/home",
    command => "/usr/bin/wget -N http://httpupdate.cpanel.net/latest && /bin/sh latest",
    timeout => 0,
    creates => "/usr/local/cpanel"
  }

}
