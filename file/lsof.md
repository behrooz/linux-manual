# lsof

Linux/unix consider everything ad file, file is very importand in linux or unix
lsof command stand for List Of Open file, this command list all open files

An open file may be a regular file, a directory, a block special file, a character special file, an executing test refrence, a library, a stream, or a network file( Intenet socket, NFS file or UNIC domain socket.)

simple sample like this
```
pc@server:~$ sudo lsof | more

COMMAND       PID     TID TASKCMD               USER   FD      TYPE             DEVICE   SIZE/OFF       NODE NAME
systemd         1                               root  cwd       DIR              253,0       4096          2 /
systemd         1                               root  rtd       DIR              253,0       4096          2 /
systemd         1                               root  txt       REG              253,0    1620224    1843086 /usr/lib/systemd/systemd
systemd         1                               root  mem       REG              253,0    1369352    1841154 /usr/lib/x86_64-linux-gn
u/libm-2.31.so
systemd         1                               root  mem       REG              253,0     178528    1836098 /usr/lib/x86_64-linux-gn
u/libudev.so.1.6.17
systemd         1                               root  mem       REG              253,0    1575112    1841257 /usr/lib/x86_64-linux-gn
u/libunistring.so.2.1.0
systemd         1                               root  mem       REG              253,0     137584    1841101 /usr/lib/x86_64-linux-gn
u/libgpg-error.so.0.28.0
systemd         1                               root  mem       REG              253,0      67912    1841137 /usr/lib/x86_64-linux-gn
u/libjson-c.so.4.0.0
systemd         1                               root  mem       REG              253,0      34872    1841030 /usr/lib/x86_64-linux-gn
u/libargon2.so.1
systemd         1                               root  mem       REG              253,0     431472    1841061 /usr/lib/x86_64-linux-gn
u/libdevmapper.so.1.02.1
systemd         1                               root  mem       REG              253,0      30936    1841273 /usr/lib/x86_64-linux-gn
u/libuuid.so.1.3.0
systemd         1                               root  mem       REG              253,0    2954080    1848423 /usr/lib/x86_64-linux-gn
u/libcrypto.so.1.1

```