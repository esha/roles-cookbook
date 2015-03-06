name              'esha-roles'
maintainer        'Christopher Elkins'
maintainer_email  'chrise@esha.com'
license           'Apache 2.0'
description       'Configures organization-specific roles'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.1.0'

recipe 'esha-roles::base',   'Provides a base configuration for all systems'
recipe 'esha-roles::client', 'Configures a Chef client system'

depends 'apt',         '~> 2.6'
depends 'chef-client', '~> 4.2'
depends 'ntp',         '~> 1.7'
depends 'ohai',        '~> 2.0'

%w( amazon centos debian fedora oracle redhat scientific ubuntu ).each do |os|
  supports os
end
