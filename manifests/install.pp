
# class to install cpanel on fresh OS

class cpanel::install {

  package { 'perl': ensure => 'installed'}

  exec { 'install_cpanel':
    cwd     => '/home',
    command => '/usr/bin/curl -o latest-dnsonly -L https://securedownloads.cpanel.net/latest && /bin/sh latest',
    timeout => 0,
    creates => '/usr/local/cpanel'
  }

}
