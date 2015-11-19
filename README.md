# salt-supervised-minion
Convert the salt-minion to a supervised service.

**Written for and tested with Ubuntu 12/14, but I'm happy to add support for
other distros, just ask.**

* *salt.package* to install minion from SaltStack repos (rather than a community
  PPA)
* *salt.minion* to configure supervisor and disable the init.d service
