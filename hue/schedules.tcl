#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

if { $argc < 2 } {
  puts "Usage: schedules.tcl schedule status"
  puts ""
  puts "  schedule              schedule id"
  puts "  status                enabled/disabled"
  exit 1
}

set schedule [lindex $argv 0]
set status [lindex $argv 1]

set url "http://$ip:80/api/$user/schedules/$schedule"

exec echo "{\"status\":\"$status\"}" | /usr/local/addons/cuxd/curl -f -s -T - $url
