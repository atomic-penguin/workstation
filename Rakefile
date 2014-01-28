#!/usr/bin/env rake

# install task
desc 'install workstation'
task :install do
  sh 'berks install --path /tmp/cookbooks'
  sh 'chef-solo -c solo.rb'
end

# default tasks are quick, CI type of tests
task :default => ['install']
