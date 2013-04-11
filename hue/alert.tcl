#!/bin/tclsh

set ip [lindex $argv 0]
set lamp [lindex $argv 1]

set url "http://$ip:80/api/newdeveloper/lights/$lamp/state"

exec echo "{\"alert\":\"select\"}" | curl -f -s -T - $url

