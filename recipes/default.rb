#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (C) 2014 Eric G. Wolfe
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['vagrant']['url'] = 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.2_x86_64.rpm'
node.default['vagrant']['checksum'] = '7233b3c97c8746b1b56c26878b68d250a43fe0f008d219fb2210f635720c6a56'

%w[git vim build-essential vagrant xml docker omnibus].each do |r|
  include_recipe r
end

yum_repository 'google-chrome' do
  description 'Google Chrome'
  baseurl "http://dl.google.com/linux/chrome/rpm/stable/#{node['kernel']['machine']}"
  gpgkey 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
  gpgcheck true
end

yum_repository 'fedora-steam' do
  description 'Steam for Fedora'
  baseurl 'http://negativo17.org/repos/steam/fedora-$releasever/$basearch/'
  gpgkey 'http://negativo17.org/repos/RPM-GPG-KEY-slaanesh'
  gpgcheck true
end

yum_repository 'rpmfusion-free' do
  description 'RPM Fusion for Fedora $releasever - Free'
  mirrorlist 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch'
  gpgcheck false
end

yum_repository 'rpmfusion-nonfree' do
  description 'RPM Fusion for Fedora $releasever - Nonfree'
  mirrorlist 'http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch'
  gpgcheck false
end

yum_repository 'rpmfusion-free-updates' do
  description 'RPM Fusion for Fedora $releasever - Free - Updates'
  mirrorlist 'http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch'
  gpgcheck false
end

yum_repository 'rpmfusion-nonfree-updates' do
  description 'RPM Fusion for Fedora $releasever - Nonfree - Updates'
  mirrorlist 'http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch'
  gpgcheck false
end

%w[ruby ruby-devel rubygems
   google-chrome-stable
   steam steam-noruntime
   clementine
   gstreamer-plugins-good
   gstreamer-plugins-bad
   gstreamer-plugins-ugly
   xchat
   pidgin pidgin-sipe
   libreoffice
   fortune-mod
   python-crypto
   thunderbird
   VirtualBox
   dkms kernel-devel
   tigervnc
   gimp
   graphviz GraphicsMagick
   python-setuptools].each do |p|
   # Probably need these too
   # lcms2.i686 nss-mdns.i686 mesa-libOSMesa.i686 gnutls.i686 libxslt.i686
  package p
end
