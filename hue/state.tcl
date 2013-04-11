#!/bin/tclsh

set ip [lindex $argv 0]
set lamp [lindex $argv 1]
set state [lindex $argv 2]
set bri [lindex $argv 3]
set sat [lindex $argv 4]
set hue [lindex $argv 5]
set tt [lindex $argv 6]

set url "http://$ip:80/api/newdeveloper/lights/$lamp/state"

exec echo "{\"on\":$state,\"sat\":$sat,\"bri\":$bri,\"hue\":$hue,\"transitiontime\":$tt}" | curl -f -s -T - $url

