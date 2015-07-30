#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

if { $argc < 2 } {
  puts "Usage: alert.tcl lamp alert"
  puts ""
  puts "  lamp              Number of the lamp"
  puts "  alert             select/lselect/none"
  puts "                    \"select\" does a single alarm"
  puts "                    \"lselect\" does multiple alarms for max 30s"
  puts "                    \"none\" cancels lselect"
  exit 1
}

set lamp [lindex $argv 0]
set alert [lindex $argv 1]

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"alert\":\"$alert\"}" | /usr/local/addons/cuxd/curl -f -s -T - $url
