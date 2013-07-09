define zabbix::agent(
	$zabbix_servers = $title,
	$zabbix_agent_hostname = $hostname,
){

	# Packages
	# ==========================================================================

	package { "zabbix-agent": }

	# Files
	# ==========================================================================
	# Note: the "files" dir is ommitted when using content => template()
	# The actual file path is:
	# /etc/puppet/modules/zabbix/templates/zabbix_agentd.conf

	file { "zabbix_agentd.conf":
		path => "/etc/zabbix/zabbix_agentd.conf",
		content => template("zabbix/zabbix_agentd.conf"),
		ensure => "present",
		owner => "root",
		group => "root",
		mode => "0644",
	}

}
