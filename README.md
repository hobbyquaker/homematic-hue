## homematic-hue

Control Philips Hue Lights with the HomeMatic CCU

Needs cURL on the CCU

## Documentation

### state.tcl

Example:
  state.tcl 172.16.23.151 3 true 255 0 30000 30

#### Arguments

* IP Address of the Hue Bridge
* Number of the Lamp
* true/false (on/off)
* Brightness
* Saturation
* Hue
* Transition-Time in 1/10s

### alert.tcl

Example:
  alert.tcl 172.16.23.151 3

#### Arguments

* IP Address of the Hue Bridge
* Number of the Lamp


## License

Copyright (c) 2013 hobbyquaker https://github.com/hobbyquaker

This Software is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
Version 3 as published by the Free Software Foundation.
http://www.gnu.org/licenses/gpl.html

This software comes without any warranty, use it at your own risk
