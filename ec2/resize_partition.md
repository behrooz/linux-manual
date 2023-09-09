# Resize ec2 partition
First go to ec2 volume and resize it to a size that you need

# First get the information

```
sudo lsblk

NAME      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
xvda      202:0    0  100G  0 disk 
├─xvda1   202:1    0   60G  0 part /
├─xvda127 259:0    0    1M  0 part 
└─xvda128 259:1    0   10M  0 part /boot/efi
xvdf      202:80   0  500G  0 disk 

```
Here i want to increase / partition to 100G whitch currently is 60G
Use the growpart command and specify the partition to extend

```
sudo growpart /dev/xvda 1
```

Then finilize your resizing with this command

```
sudo xfs_growfs -d /

```
the result most be sth like this

```
meta-data=/dev/xvda1             isize=512    agcount=16, agsize=1047040 blks
         =                       sectsz=4096  attr=2, projid32bit=1
         =                       crc=1        finobt=1, sparse=1, rmapbt=0
         =                       reflink=1    bigtime=1 inobtcount=1
data     =                       bsize=4096   blocks=15725563, imaxpct=25
         =                       sunit=128    swidth=128 blks
naming   =version 2              bsize=16384  ascii-ci=0, ftype=1
log      =internal log           bsize=4096   blocks=16384, version=2
         =                       sectsz=4096  sunit=4 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
```



