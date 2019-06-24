<img src="/docs/img/k-logo.png" align="left" height="35" width="275" />
<img src="/docs/img/perl_logo.png" align="right" height="100" width="100" />
<br/><br/>
<br/>

[![Alt-Text](https://img.shields.io/static/v1.svg?label=ver&message=1.3.22&color=success)](docs/start.md)
[![](https://img.shields.io/static/v1.svg?label=license&message=GPL2&color=blue)](LICENSE)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/1855/badge)](https://bestpractices.coreinfrastructure.org/projects/1855)

## Overview

A simple and efficient set of data recorders and transport utilities for ICT, 
environmental monitoring, meteorology and IoT, designed to record top essential 
performance metrics, save raw data and send it for further analysis.

* [Design](docs/design.md)
* [Getting started](docs/start.md)
* [Contributing and support](docs/contributing.md)

## Requirements

* CPU: x64, ARMv8, SPARCv9, PPC64
* Memory: 32 MB RAM
* Storage: 128 MB, 750KB per day, per data source
* Protocols: HTTP(S), MODBUS(RTU, TCP, ASCII)
* SBC: Raspberry PI 3B, 3B+

## Features

* Support for raw data
* IoT readiness
* Conservative in CPU and memory usage on different architectures 
* Easy to change or add new data recorders to collect new data 
* Runs without human intervention, easy to detect data transmission problems
* Fetch data from any system, device, sensor with support for multi-industry
* Full control with no complicated licenses for further developments 

## Supported Industries

### Information and Communications Technology

 * sysrec - Overall system performance data recorder
 * cpurec - Per CPU statistics data recorder
 * nicrec - Per NIC statistics data recorder
 * diskrec - Per disk statistics data recorder
 * hdwrec - System inventory data recorder
 * faultrec - Fault Management data recorder
 * jvmrec - Java VM statistics data recorder
 * snmprec - Ethernet and SAN Switch, SNMP data recorder
 * netrec - TCP, UDP data recorder
 * httprec - HTTP server statistics: NGINX, Apache, Tomcat, PHP-FPM
 * dbrec - database data recorder: MariaDB, MySQL, PostgreSQL
 * certrec - X.509 security certificate statistics data recorder
 * svcrec - service performance,availability: IMAP,SMTP,POP3,LDAP,DNS,TCP(Any)
 * direc - filesystem directory statistics data recorder
 * ntprec - NTP server statistics data recorder
 * procrec - process statistics data recorder
 * webrec - web application performance,availability data recorder

### Public Cloud Providers

 * awsrec - Amazon Web Services data recorder
 * azurec - Microsoft Azure data recorder
 * gcprec - Google Computing Platform data recorder
 * dgorec - DigitalOcean data recorder

### Industrial IoT, Weather and Environment

 * rs485rec - Serial, MODBUS (ASCII, RTU, TCP) industrial idata recorder
 * wsrec - FineOffset WH1080 weather station data recorder RS-232/USB
 * axisrec - Network AXIS camera data recorder

## Commercial support
For any other questions or assistance we are offering commercial support.
[K1](https://www.kronometrix.com/k1) is a commercial product built on top 
Kronometrix Data Recording. Please contact us +358 50 483 9978 or email us at: 
sales@kronometrix.com for more information.

## Resources

[www.kronometrix.com][1] | [@KronometrixHelp][2] | [www.facebook.com/kronometrix][3]


[1]: https://www.kronometrix.com/
[2]: https://twitter.com/KronometrixHelp
[3]: https://www.facebook.com/kronometrix
