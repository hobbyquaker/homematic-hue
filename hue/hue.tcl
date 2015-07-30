#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

if { $argc < 2 } {
  puts "Usage: hue.tcl lamp state brightness saturation hue transition_time"
  puts ""
  puts "  lamp                  Number of the lamp"
  puts "  state                 on/off - true/false"
  puts "  brightness            0-255"
  puts "  saturation            0-255"
  puts "  hue                   0-65535 0=red, 25500=green, 46920=blue"
  puts "  transition_time       1/10s"
  exit 1
}

set lamp [lindex $argv 0]
set state [lindex $argv 1]
set bri 255
set sat 0
set hue 30000
set tt 30
if { $argc >= 3 } {
  set bri [lindex $argv 2]
}
if { $argc >= 4 } {
  set sat [lindex $argv 3]
}
if { $argc >= 5 } {
  set hue [lindex $argv 4]
}
if { $argc >= 6 } {
  set tt [lindex $argv 5]
}

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"on\":$state,\"sat\":$sat,\"bri\":$bri,\"hue\":$hue,\"transitiontime\":$tt}" | /usr/local/addons/cuxd/curl -f -s -T - $url
