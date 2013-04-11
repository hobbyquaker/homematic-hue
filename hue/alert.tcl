#!/bin/tclsh

set lamp [lindex $argv 0]

set url "http://172.16.23.151:80/api/newdeveloper/lights/$lamp/state"

exec echo "{\"alert\":\"lselect\"}" | curl -f -s -T - $url

