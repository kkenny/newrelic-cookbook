Description
===========
Installs, configures, and starts NewRelic system and php agents.

Requirements
============
You will need to add an attribute to the node object, environment, or role to specify the following:

```
"newrelic": {
  "license_key": "YOUR-LICENSE-KEY"
}
```

Without this, your chef-client execution will fall on it's face, sorry, it's by design to make sure
you populate this information and don't have to go chasing down why your daemons won't start.

Attributes
==========
```
default[:newrelic][:apt_key_url] = "http://download.newrelic.com/548C16BF.gpg"
default[:newrelic][:apt_url] = "http://apt.newrelic.com/debian/"
default[:newrelic][:log][:sysmond][:level] = "info"
default[:newrelic][:log][:sysmond][:file] = "/var/log/newrelic/nrsysmond.log"
default[:newrelic][:log][:daemon][:level] = "info"
default[:newrelic][:log][:daemon][:file] = "/var/log/newrelic/newrelic-daemon.log"
```

