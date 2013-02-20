# Class: sysctl::params
#
# This class defines default parameters used by the main module class sysctl
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to sysctl class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class sysctl::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'procps',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/sysctl.d',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/sysctl.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $version = 'present'
  $absent = false
  $audit_only = false
  $noops = false

}
