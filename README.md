# Docker Setup - Automated Scripts Installation
The components of the EPC can be built in multiple containers but this project builds the EPC in a single container 
And ENB in a separate container. This is good for scaling in a distributed ENB system
## Required Software
> $ docker --version

> Docker
> Docker-compose
> linux (Ubuntu)

## Please following the steps for Openairinterface5g (EPC & ENB)

> $ cd /root

> $ git clone https://github.com/oddytony/oaidocker.git

> $ cd /root/openairinterface5g/oai

> $ chmod 777 launch.sh 

> $ ./launch.sh

## if you get errors during the chmod command, you are probably having permission errors or there is something wrong with your file system

## After few seconds, Rx/Tx Lights in the B200 should glow.

## In any changes for the IP address in the configuration files mentioned below (eNB, EPC) and follow the above procedure

> /tmp/oai/conf/mme.conf

> /tmp/oai/conf/spgw.conf

> /tmp/oai/conf/enb.10MHz.b200 and

> /openairinterface5g/oai/ vi docker-compose.yml ( line 20 : ipv4_address and line 37 : ipv4_address )

## Checklist

1, SQN no need to update in users table.

2, HSS.conf op key =”” # need empty.

3,epc container hostname need to insert in to mmeidentity table and update the sqn number in users table.

>INSERT INTO `mmeidentity` VALUES (2,epc.OpenAir5G.Alliance','OpenAir5G.Alliance',0);

>UPDTAE users SET SQN = 00000000000000002112 WHERE IMSI = 208920100001101;

Note: Current sim sqn number value need check from the sim and update in to users table.
Finally, do not forget to change the SQN number into the oai_db.

4, ip address need check all below config files EPC container
>/use/local/etc/oai/mme.conf.

>/use/local/etc/oai/spgw.conf. -	need to change the UE_MTU value and DNS IP Address

ENB container 

>/home/opencells-mods/enb.10MHz.b200.

5, Rx/Tx Lights in the B200 should glow

