# workstation cookbook

* Just a cookbook to deploy my personal workstation.

# Requirements

Depends on the following cookbook installed by berkshelf:

* git
* docker
* vagrant
* vim
* xml
* yum
* build-essential 

# Usage

1. berks install --path /tmp/cookbooks
2. sudo chef-solo -c solo.rb

# Attributes

* none

# Recipes

* workstation::default

# Author

Author:: Eric G. Wolfe (<wolfe21@marshall.edu>)
