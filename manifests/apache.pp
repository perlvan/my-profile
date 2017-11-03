class profile::apache(
  Boolean $default_vhost = false,
  Hash $apache_vhost_servers,
#  Integer $port = 80,
#  String $docroot = '/var/www/test',
) {
  class { '::apache':
    default_vhost  => $default_vhost,
  }
  create_resources(::apache::vhost, $apache_vhost_servers)

#  ::apache::vhost { 'perlvan2.mylabserver.com':
#     port     => $port,
#     docroot  => $docroot,
#     before   => File["${docroot}/index.html"],
#  }
#  file { "${docroot}/index.html":
#    content => "Test page this is test",
#  }
}
