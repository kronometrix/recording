# Features

The main features of Kronometrix Data Recording vs. other similar ICT and IoT technologies. Includes deployment, general options and features of Kronometrix to collect and record data from different industries and applications and how these align to other solutions. 

## Deployment

|| Kronometrix | Grafana | Nagios Xi | Datadog | Paessler | Dynatrace | Description |
|------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:| 
| SaaS | yes | yes | no | yes | yes | yes | Run it as a service, over Internet |
| On-premises |  yes | yes | yes | no | yes | no | Run it as a product on your private network |  
| Edge/Fog Computing |  no | yes | no | no | no | no | Run it on [Single-Board Computers](https://en.wikipedia.org/wiki/Single-board_computer), like RaspberryPI|


## Data Recording

|| Kronometrix | Grafana | Nagios Xi | Datadog | Paessler | Dynatrace | Description |
|------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:| 
| Type | recorder | plugins | agent | agent | agent | agent | Own or 3rd party data recorders or agents. Datadog uses StatsD. Dynatrace uses native binaries and Java Compuware agent for Linux, Windows |
| Raw data | yes | yes | yes | no | yes | no | DataDog Agent7 takes 750MB disk space, no original raw data available  |
| Time-series Compatible | yes | yes | no | no | no | no | Data organised as time series |
| Data Ontology | yes | yes | no| no | no | no | Kronometrix Data Recording has groupped and classified all recorded metrics, for a very efficient data analysis process |
| Low latency | yes | yes | no |  no | no | no | Datadog aggregates all collected data, using different summary statistics functions. This means no possibility to retrieve the original raw data, higher consumption of system CPU resources (it needs to calculate all sort of aggregate functions). Kronometrix data recorders will not aggregate raw datadata, to always offer access to the original raw data, being very efficient, with a low memory and CPU footprint |
| Rapid Prototyping | yes | yes | no | no | no | no | Easy to build a new data recorder to collect data from a new data source |
| Performance Analysis | yes | yes | yes | yes | yes | yes | Designed for performance analysis and capacity planning & management |
| Coordinated Universal Time  (UTC) | yes | | | | | Kronometrix Data Recording uses UTC by default making easy and simple to share data  |
| Operating System | yes | yes | yes | yes | yes | |
| Platform Virtualization | yes | yes | yes | yes | yes | |
| OS Virtualization | yes | yes | yes | yes | yes | Kronometrix Data Recording supports Linux containers, FreeBSD jails, Solaris zones and Docker |
| Kubernets | no | yes | no | yes | | yes | Kronometrix roadmap 2022 |
| Network equipment (SNMP) | yes | yes | yes | yes | yes | yes | |
| Application Monitoring | yes | yes | yes | yes | yes | yes | Kronometrix improvements Q1 2022 J2EE, DB monitoring |
| Internet Enterprise Services | yes | yes | yes | yes | yes | yes | |
| X.509 Security Certificates | yes | yes | no | no | no | no | |
| Serial Command Communication | yes | yes | no | no | no | no | Can connect to manage and control serial devices |
| RS232/485 | yes | | no | no | no | Serial RS232/RS485 support |
| MODBUS | yes | no | | no | no | no | MODBUS RTU, ASCII, TCP support |
| MQTT | 2022 | no | no | no | no | no | MQTT 3/5 support. Kronometrix improvements Q3 2022 |
| Bluetooth Low Energy | 2022 | no | no | no | no | no | Kronometrix roadmap 2022 |
| BACnet | 2023 | no | no | no | no | no | Kronometrix roadmap 2023 |
| Healthcare | 2023 | no | no | no | no | no | Kronometrix roadmap 2023 |
| Open Source | yes | yes | yes | | | Datadog uses StatsD. Dynatrace uses Compuware Java agent |
| ARM compatible | yes | yes | | | | yes | |
| Based on | Perl5/Lua | NA | C/Perl/Shell | Python3 | C | C/Java | |

Read more about Kronometrix Data Recording [features](https://www.kronometrix.com/fabric/recorders/) 
<br/>
Go back [main page](https://gitlab.com/kronometrix/recording/)
