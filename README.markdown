# Message of the day #

This is a simple Puppet module to manage the Message of the day on unix
operating systems. The module uses figlet to generate a motd header for the 
host that is managed by puppet along with some basic facts. 

# Author #

 * Samúel Jón Gunnarsson <sammi@villingaholt.nu>
 * [GitHub Project](https://github.com/samueljon/samueljon-motd)
 * [Blog](http://www.villingaholt.nu)
 * [@samueljon](http://twitter.com/samueljon)

# Sample #
```Shell
-----------------------------------------------------------
                                  _ 
                        _ __  ___/ |
                       | '_ \/ __| |
                       | | | \__ \ |
                       |_| |_|___/_|

-----------------------------------------------------------
    Welcome to ns1.example.com
    OS: CentOS Release 6.5
    OS family: RedHat
    Architechture: x86_64
    IP: aaa.bbb.ccc.ddd
    Product: VMware Virtual Platform
    CPU: 1 X Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz
    RAM: 996.38 MB
    System uptime: 4:36 hours
-----------------------------------------------------------
    This system is managed by Puppet
-----------------------------------------------------------
```
# Getting Started #

In your puppet manifests, site.pp or in the Dashboard or other ENC:

    include motd


