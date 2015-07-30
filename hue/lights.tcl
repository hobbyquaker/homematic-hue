#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

if { $argc < 2 } {
  puts "Usage: lights.tcl lamp state"
  puts ""
  puts "  lamp                  Number of the lamp"
  puts "  state                 on/off - true/false"
  exit 1
}

set lamp [lindex $argv 0]
set state [lindex $argv 1]

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"on\":$state}" | /usr/local/addons/cuxd/curl -f -s -T - $url
