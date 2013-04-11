#!/bin/tclsh

set lamp [lindex $argv 0]
set state [lindex $argv 1]
set bri [lindex $argv 2]
set sat [lindex $argv 3]
set hue [lindex $argv 4]

set jsonfile [open hue.json w]

puts $jsonfile "{\"on\":$state,\"sat\":$sat,\"bri\":$bri,\"hue\":$hue}"

close $jsonfile

set url "http://172.16.23.151:80/api/newdeveloper/lights/$lamp/state"

exec curl -f -s -T hue.json $url

