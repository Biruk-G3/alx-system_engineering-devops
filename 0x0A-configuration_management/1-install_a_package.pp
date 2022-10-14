# install puppet-lint -v 2.5.0

exec { 'flask':
  command => '/usr/bin/pip3 install flask flask_restful apiai -v 2.1.0',
}
