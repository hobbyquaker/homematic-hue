## homematic-hue 0.5

> Control Philips Hue Lights with the HomeMatic CCU

Simple Wrapper Scripts around cURL calls to the Hue API

Needs cURL (included in CUxD-Addon which is also needed to call the Scripts without system.Exec usage)


**DEPRECATED**
I do not develop this project anymore, pls take a look at
* https://github.com/j-a-n/homematic-addon-hue
* https://github.com/thkl/Homematic-Virtual-Interface  


## Documentation

### Install

* Make a directory /usr/local/addons/hue on your Homematic CCU
* Copy the Scripts into this directory


### config.tcl

You have to setup your Hue Bridge IP and API Username here.

How to Setup an API Username can be found here: http://www.developers.meethue.com/documentation/getting-started


### hue.tcl

Set lamp state with hue value

#### Example:
     /usr/local/addons/hue/hue.tcl 3 true 255 0 30000 30

#### Arguments

* Number of the Lamp
* Lamp on/off - true/false
* Brightness - 0-255
* Saturation - 0-255
* Hue - 0-65535 0=red, 25500=green, 46920=blue
* Transition-Time in 1/10s

### ct.tcl

Set lamp state with color temperature value

#### Example:
     /usr/local/addons/hue/ct.tcl 3 true 255 0 30000 30

#### Arguments

* Number of the Lamp
* Lamp on/off - true/false
* Brightness - 0-255
* Saturation - 0-255
* Color Temperature - from 153 (6500K) to 500 (2000K)
* Transition-Time in 1/10s


### alert.tcl

Starts and stops alarm

#### Example:
     /usr/local/addons/hue/alert.tcl 3 select

#### Arguments

* Number of the Lamp
* select/lselect/none - "select" does a single alarm, "lselect" does multiple alarms for max 30s, "none" cancels lselect


### group.tcl

Switch a Group on/off

#### Example:
    /usr/local/addons/hue/group.tcl 1 true

#### Arguments

* Group ID
* Group on/off - true/false


### lights.tcl

Set lamp state

#### Example:
     /usr/local/addons/hue/lights.tcl 1 true

#### Arguments

* Number of the Lamp
* Lamp on/off - true/false 


### schedules.tcl

Enable/disable stored schedule.

#### Example:
     /usr/local/addons/hue/schedules.tcl 123456789 enabled

#### Arguments

* ID of the schedule
* enabled/disabled


## License

Copyright (c) 2013 hobbyquaker https://github.com/hobbyquaker

This Software is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
Version 3 as published by the Free Software Foundation.
http://www.gnu.org/licenses/gpl.html

This software comes without any warranty, use it at your own risk
