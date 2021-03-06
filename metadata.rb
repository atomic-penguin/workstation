name             'workstation'
maintainer       'Eric G. Wolfe'
maintainer_email 'wolfe21@marshall.edu'
license          'Apache 2.0'
description      'Installs/Configures workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'
depends 'omnibus'
depends 'git'
depends 'vim'
depends 'vagrant'
depends 'build-essential'
depends 'xml'
depends 'yum'
depends 'docker'
