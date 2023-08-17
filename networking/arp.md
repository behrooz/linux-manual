# linux manual documentation
Here i put some usefull linux command that i faceing in my daily work, i am trying to put comand as easy as i can with full usage and output samples

# arp 
First lets know what is arp ?
ARP, or Address Resolution Protocol, is a communication protocol used in computer networks to map IP addresses to MAC addresses. 

The main purpose of ARP is to determine the MAC address associated with a given IP address. This is essential because while data packets in a network are addressed using IP addresses, the actual communication at the data link layer (Layer 2 of the OSI model) requires MAC addresses. 

# Here's how ARP works and its use case:

**ARP Request**: When a device (host A) in a network wants to communicate with another device (host B) using its IP address, it first checks its ARP cache (a local table storing recent IP-to-MAC mappings). If the mapping is not found, host A sends an ARP broadcast request asking "Who has IP address X?" to all devices on the network.

**ARP Reply**: Host B, which owns the IP address being queried, responds with its MAC address. This response is unicast (sent directly to host A) and includes its MAC address. Host A then updates its ARP cache with this new mapping.

**Communication**: With the IP-to-MAC mapping now available in its cache, host A can construct data packets with the correct destination MAC address and send them to host B over the network.

```
arp
arp -a
arp -e
arp -n
# or with ip command
ip neigh
ip -s neigh

```
Output is sth like this :
```
pc@name: arp -a                                        
? (192.168.2.62) at 50:3e:aa:d2:db:8c [ether] on wlp3s0
? (192.168.2.63) at d0:37:45:4e:00:e5 [ether] on wlp3s0
_gateway (192.168.2.1) at 00:1e:2c:5a:20:40 [ether] on wlp3s0
? (192.168.2.92) at 50:3e:aa:d3:56:42 [ether] on wlp3s0
? (192.168.2.163) at e8:f4:08:f1:66:e3 [ether] on wlp3s0
? (192.168.2.19) at b4:2e:99:db:43:c5 [ether] on wlp3s0
? (192.168.2.20) at 18:c0:4d:bc:5a:7f [ether] on wlp3s0
? (192.168.2.170) at 50:3e:aa:d2:db:93 [ether] on wlp3s0
? (192.168.2.178) at 7c:c2:c6:24:c2:73 [ether] on wlp3s0
? (192.168.2.200) at ac:9e:17:e1:3f:bf [ether] on wlp3s0
? (192.168.2.179) at 7c:c2:c6:23:f7:db [ether] on wlp3s0
? (192.168.2.180) at 7c:c2:c6:24:de:c9 [ether] on wlp3s0
? (192.168.2.202) at ac:9e:17:e1:3f:bf [ether] on wlp3s0
? (192.168.2.183) at 08:00:27:22:a7:f0 [ether] on wlp3s0
? (192.168.2.129) at b0:be:83:77:8f:e4 [ether] on wlp3s0
? (192.168.2.216) at b4:2e:99:db:43:d0 [ether] on wlp3s0
? (172.19.0.5) at 02:42:ac:13:00:05 [ether] on br-70e2279b8319
? (192.168.2.133) at 50:3e:aa:d4:aa:91 [ether] on wlp3s0
? (172.17.0.2) at 02:42:ac:11:00:02 [ether] on docker0
? (192.168.2.136) at d0:37:45:3f:42:c9 [ether] on wlp3s0
? (192.168.2.143) at 14:7d:da:99:f1:0e [ether] on wlp3s0
? (192.168.2.66) at d0:37:45:4f:c8:49 [ether] on wlp3s0
? (192.168.2.68) at d0:37:45:a4:be:c4 [ether] on wlp3s0
? (192.168.2.70) at 3c:06:30:1b:99:35 [ether] on wlp3s0
? (192.168.2.71) at b4:2e:99:db:43:ef [ether] on wlp3s0
? (192.168.2.73) at d0:37:45:3f:73:68 [ether] on wlp3s0
? (192.168.2.55) at 50:3e:aa:d2:d9:ec [ether] on wlp3s0
? (192.168.2.58) at d0:37:45:a9:56:79 [ether] on wlp3s0
? (192.168.2.78) at <from_interface> PERM PUB on wlp3s0

```