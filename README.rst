
=============
Squid Formula
============= 


Sample Pillars
==============

Squid as proxy

.. code-block:: yaml

    squid:
      proxy:
        enabled: true
        admin:
          user: manager
          password: passwd
        deny:
        - 192.168.2.30
        allow:
        - localnet

More Information
================

* https://raw.githubusercontent.com/saltstack-formulas/squid-formula
* http://itkia.com/using-squid-to-cache-apt-updates-for-debian-and-ubuntu/
* http://serverascode.com/2014/03/29/squid-cache-yum.html