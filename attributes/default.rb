default[:newrelic][:apt_key_url] = "http://download.newrelic.com/548C16BF.gpg"
default[:newrelic][:apt_url] = "http://apt.newrelic.com/debian/"
default[:newrelic][:log][:sysmond][:level] = "info"
default[:newrelic][:log][:sysmond][:file] = "/var/log/newrelic/nrsysmond.log"
default[:newrelic][:log][:daemon][:level] = "info"
default[:newrelic][:log][:daemon][:file] = "/var/log/newrelic/newrelic-daemon.log"
