# == Class: profile
#
# Manages Profiles defined in the Sixt IT infrastructure.
#
# === Parameters
#
# [*profiles*]
#   The profiles defined in hiera to load. Puppet will fail if profile manifest does not exist!
#
#
# === Variables
#
# === Authors
#
# Maximilian Mayer <mayer.maximilian@googlemail.com>
#
# === Copyright
#
# Copyright 2015  Maximilian Mayer
#
class profile (
  $profiles = [],
) {
  include profile::puppet
  $profiles.each | String $name | {
    require "profile::${name}"
  }
}
