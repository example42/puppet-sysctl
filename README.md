# Puppet module: sysctl

This is a Puppet module for sysctl
It provides only package installation and file configuration.

Based on Example42 layouts by Alessandro Franceschi / Lab42

Sysctl type and sysyctl::value define have been copied from Duritong's puppet-sysctl
https://github.com/duritong/puppet-sysctl

Official site: http://www.example42.com

Official git repository: http://github.com/example42/puppet-sysctl

Released under the terms of Apache 2 License.

This module requires the presence of Example42 Puppi module in your modulepath.


## USAGE

You can decide to manage sysctl with 2 alternative methods:
- Manage the /etc/sysctl.conf file (and /etc/sysctl.d directory) with the (Example42 standard) source and termplate parameters
- Manage single sysctl entries with the sysctl::value define


* Use custom sources for /etc/sysctl.conf

        class { 'sysctl':
          source => [ "puppet:///modules/example42/sysctl/sysctl.conf-${hostname}" , "puppet:///modules/example42/sysctl/sysctl.conf" ], 
        }


* Use custom source directory for the content of /etc/sysctl.d/

        class { 'sysctl':
          source_dir       => 'puppet:///modules/example42/sysctl/conf/',
          source_dir_purge => false, # Set to true to purge any existing file not present in $source_dir
        }

* Use custom template for  /etc/sysctl.conf . Note that template and source arguments are alternative. 

        class { 'sysctl':
          template => 'example42/sysctl/sysctl.conf.erb',
        }

* Manage atomically single sysctl entries (alternative to the source and template options):

        sysctl::value { "vm.nr_hugepages": value => "1583"}


* Automatically include a custom subclass

        class { 'sysctl':
          my_class => 'example42::my_sysctl',
        }



[![Build Status](https://travis-ci.org/example42/puppet-sysctl.png?branch=master)](https://travis-ci.org/example42/puppet-sysctl)
