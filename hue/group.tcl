#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

if { $argc < 2 } {
  puts "Usage: group.tcl group state"
  puts ""
  puts "  group              ID of the group"
  puts "  state              on/off - true/false"
  exit 1
}

set group [lindex $argv 0]
set state [lindex $argv 1]

set url "http://$ip:80/api/$user/groups/$group/action"

exec echo "{\"on\":$state}" | /usr/local/addons/cuxd/curl -f -s -T - $url
