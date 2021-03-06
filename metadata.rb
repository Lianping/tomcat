name             "tomcat"
maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Installs/Configures tomcat"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.15.1"

%w{ java openssl }.each do |cb|
  depends cb
end

%w{ debian ubuntu centos redhat fedora amazon }.each do |os|
  supports os
end

recipe "tomcat::default", "Installs and configures Tomcat"
recipe "tomcat::users", "Setup users and roles for Tomcat"
