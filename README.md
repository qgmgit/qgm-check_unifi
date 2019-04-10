# qgm-check_unifi

Local Check for check_mk to get information about unifi infrastructure from controller API

## Requirements 

* Unifi Controller Software 
* check_mk agent on the controller host

## Installation 

* Clone the Repo: ``git clone ``
* Run ./install -- this will 
  * Copy the check-script to the check_mk-agents local directory
  * Copy the API-library to ``/usr/local/lib/qgm_check_unifi/unifi_api``
  * If the file does not exist, it copies ``qgm_check_unifi.conf`` to ``/etc/qgm_check_unifi.conf``
* Edit ``qgm_check_unifi.conf`` to fit your needs. You can add an extra user to your controller software or use an existing one.

### Test

Running the command on the unifi controller host should give you something like this:
```
# /usr/lib/check_mk_agent/local/qgm_checkBZ2/_unifi 
0 uap_0418D664DB8F load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-04-vorbereitung-physik (BZ2/10.17.2.14/static)
0 uap_44D9E7082E81 load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-07-stupla (BZ2/10.17.2.17/static)
0 uap_0418D664DB02 load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-02 (BZ2/10.17.2.12/static)
0 uap_44D9E70833A1 load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-01-lehrerzimmer (BZ2/10.17.2.11/static)
0 uap_0418D664DA93 load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-03 (BZ2/10.17.2.13/static)
0 uap_788A20705DA5 load1=0.00|load5=0.00|load15=0.00|num_clients=0 ubnt-05-raum110a (U7LT/10.17.2.15/dhcp)
0 uap_44D9E77A4DBA load1=0.04|load5=0.01|load15=0.00|num_clients=0 ubnt-10-raum143 (BZ2/10.17.2.20/static)
```

## Check_mk/OMD

Now you can refresh the services of your unifi controller host in the webUI of Check_Mk and you get the new services in your inventory.




