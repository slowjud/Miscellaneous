#! /bin/bash

# This is a simple script to download and install rails.
# It is almost guarantied to be out of date if your using it.

# everything will be done from inside ~/src
mkdir ~/src
cd ~/src


# install wget 'cause its better than curl
curl -O http://ftp.gnu.org/gnu/wget/wget-1.11.tar.gz
tar zxvf wget-1.11.tar.gz 
cd wget-1.11
./configure --prefix=/usr/local
make
sudo make install
cd ~/src


# download and install Ruby from source
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p376.tar.gz
tar xzvf ruby-1.9.1-p376.tar.gz
cd ruby-1.9.1-p376
./configure --enable-shared --enable-pthread CFLAGS=-D_XOPEN_SOURCE=1
make
sudo make install
cd ~/src


# download and install Rubygems from source
wget http://files.rubyforge.vm.bytemark.co.uk/rubygems/rubygems-1.3.6.tgz
tar xzvf rubygems-1.3.6.tgz
cd rubygems-1.3.6
sudo /usr/local/bin/ruby setup.rb
cd ~/src


# now install rails
sudo gem install rails
