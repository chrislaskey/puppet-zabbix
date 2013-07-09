About
================================================================================

A custom puppet module for installing Zabbix agent on Debian 7 and Ubuntu
Server 12.04.

Installs the `zabbix_agent` package. Basic usage is:

```puppet
node "some-client.example.com" {
	zabbix::agent { "zabbix-server.example.com": }
}
```

Available parameters and their default values:

```puppet
$zabbix_servers = $title
$zabbix_agent_hostname = $hostname
```

License
================================================================================

All code written by me is released under MIT license. See the attached
license.txt file for more information, including commentary on license choice.
