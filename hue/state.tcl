#!/bin/tclsh

set lamp [lindex $argv 0]
set state [lindex $argv 1]
set bri [lindex $argv 2]
set sat [lindex $argv 3]
set hue [lindex $argv 4]
set tt [lindex $argv 5]

set url "http://172.16.23.151:80/api/newdeveloper/lights/$lamp/state"

exec echo "{\"on\":$state,\"sat\":$sat,\"bri\":$bri,\"hue\":$hue,\"transitiontime\":$tt}" | curl -f -s -T - $url

