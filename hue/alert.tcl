#!/bin/tclsh

source config.tcl
source config.tcl

set lamp [lindex $argv 0]
set alert [lindex $argv 1]

set url "http://$ip:80/api/$user/lights/$lamp/state"

exec echo "{\"alert\":\"$alert\"}" | curl -f -s -T - $url

