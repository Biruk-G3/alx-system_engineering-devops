# install puppet-lint -v 2.5.0

exec { 'flask':
  command => '/usr/bin/apt-get -y pip3 install flask flask_restful apiai -v 2.1.0',
}
