# Attach aws dashboard
First you need a volumen to add in you ec2 dashboard
# Linux commands
Follow the steps to attach a new volume 
```
# Connect to root user
sudo su 
# check out wat you have 
lsblk
#format your the volume, please wait until finish 
mkfs.ext4 /dev/xvdf
#create a new directory to mount new partition
mkdir /data
#mount new partition
mount /dev/xvdf /data
```

# Permanently mount

```
blkid
#Copy that UUID of your extra volume.
#edit your fstab

nano /etc/fstab
UUID=<Your UUID Here>             /data       ext4   defaults,noatime  1   1
```