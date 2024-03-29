<img src="/docs/img/KDR-Text.png" align="left" height="74" width="325" />
<br/><br/>
<br/><br/>

[![Alt-Text](https://img.shields.io/static/v1.svg?label=ver&message=1.13&color=success)](docs/start.md)
[![](https://img.shields.io/static/v1.svg?label=license&message=GPL2&color=blue)](LICENSE)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/1855/badge)](https://bestpractices.coreinfrastructure.org/projects/1855)

# Overview

A simple and efficient set of data recorders and transport utilities for different industries: ICT enterprise, weather and environment, industrial IoT, designed to record top essential performance metrics, save original raw data and send it for data visualization and analysis.

* [Design](docs/design.md)
* [Features](docs/features.md)
* [Installation](docs/start.md)
* [Operation](docs/usage.md)
* [Troublehsooting](docs/troubleshooting.md)
* [Contributing and support](docs/contributing.md)

# Requirements

* Processor: Intel/AMD x64, Apple M1, ARMv8
* Memory: 32 MB RAM
* Disk space: 140MB, Raw data: 500-750KB per day / data source
* Protocols: SERIAL COMMUNICATION, SNMP, MODBUS(RTU,TCP,ASCII), MQTT, HTTP, BLE, BACnet
* SBC: Raspberry PI 3B, 4B

# Features

* Support for raw data
* Industrial IoT readiness
* Conservative in CPU and memory usage on different architectures 
* Easy to change or add new data recorders to collect new data 
* Runs without human intervention, easy to detect data transmission problems
* Fetch data from any system, device, sensor with support for different industries
* Full control with no complicated licenses for further development
* [See more](docs/features.md)

# Supported Systems

* CentOS 7.9 x86_64
* RHEL 8 x86_64
* Debian 9.13 amd64
* CloudLinux 7 x86_64
* Ubuntu Server Edition 18 amd64
* SLES 15 x86_64
* OpenSuse Leap 15 x86_64
* Raspbian GNU/Linux 8+ armv8
* FreeBSD
* MacOS (Q4 2022)
* Windows 7
* Windows 8
* Windows 10
* Windows 11 (TBD)
* Windows 2008 R2 Server x64
* Windows 2012 R2 Server x64
* Windows 2016 R2 Server x64

# Industries

## Information and Communications Technology

 * sysrec - Overall system performance data recorder
 * cpurec - Per CPU statistics data recorder
 * nicrec - Per NIC statistics data recorder
 * diskrec - Per disk statistics data recorder
 * hdwrec - System inventory data recorder
 * faultrec - Fault Management data recorder **(Q4 2022)**
 * dockrec - Docker Performance data recorder **(Q2 2022)**
 * jvmrec - Java VM statistics data recorder
 * snmprec - SNMP equipment data recorder
 * netrec - TCP, UDP data recorder
 * httprec - HTTP server statistics: NGINX, Apache, Tomcat, PHP-FPM
 * dbrec - Database data recorder: MariaDB, MySQL, PostgreSQL **(Q3 2022)**
 * certrec - X.509 security certificate statistics data recorder
 * direc - Filesystem directory statistics data recorder
 * ntprec - NTP server statistics data recorder
 * smtprec - SMTP server data recorder **(Q3 2022)**
 * imaprec - IMAP/POP server data recorder **(Q3 2022)**
 * svcrec - Service performance,availability: IMAP,SMTP,POP3,LDAP,DNS,TCP,Any
 * procrec - Process statistics data recorder
 * webrec - Web application performance,availability data recorder
 * wprec - Wordpress security, performance and availability data recorder **(Q3 2022)**

## Industrial IoT, Weather and Environment

 * axisrec - AXIS security and video surveillance data recorder
 * bacrec - Building management BACnet data recorder **(2023)**
 * blrec - Bluetooth Low Energy data recorder **(Q4 2022)**
 * rs485rec - Industrial RS-232, RS-485, MODBUS data recorder 
 * sockrec - Network IO Socket data recorder
 * wsrec - General weather station recorder RS-232/USB

# Commercial products

[Kronometrix Industrial IoT Gateway](https://www.kronometrix.com/products/iotgateway/)

# Find out more

[www.kronometrix.com][1] | [support.kronometrix.com][2]


[1]: https://www.kronometrix.com/data-fabric/recorders
[2]: https://support.kronometrix.com
