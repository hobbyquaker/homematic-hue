#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

set lamp [lindex $argv 0]
set state [lindex $argv 1]
set bri [lindex $argv 2]
set sat [lindex $argv 3]
set hue [lindex $argv 4]
set tt [lindex $argv 5]

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"on\":$state,\"sat\":$sat,\"bri\":$bri,\"hue\":$hue,\"transitiontime\":$tt}" | /usr/local/addons/cuxd/curl -f -s -T - $url 
