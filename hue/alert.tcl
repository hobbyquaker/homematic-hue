#!/bin/tclsh

source /usr/local/addons/hue/config.tcl

set lamp [lindex $argv 0]
set alert [lindex $argv 1]

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"alert\":\"$alert\"}" | /usr/local/addons/cuxd/curl -f -s -T - $url