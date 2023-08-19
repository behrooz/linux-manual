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

# Examples 1:

Return process list that has actively network communication on port 80

```
sudo lsof -i :80

firefox-b   4245 tips   85u  IPv4 7385420      0t0  TCP tips-All-Series:48146->ec2-3-82-66-120.compute-1.amazonaws.com:http (ESTABLISHED)
http      628048 _apt    3u  IPv4 8633336      0t0  TCP tips-All-Series:36386->40.114.136.21:http (ESTABLISHED)
http      628049 _apt    3u  IPv4 8633335      0t0  TCP tips-All-Series:49536->50.7.87.83:http (CLOSE_WAIT)
http      628050 _apt    3u  IPv4 8638476      0t0  TCP tips-All-Series:48198->50.7.87.82:http (ESTABLISHED)
http      628051 _apt    3u  IPv4 8638477      0t0  TCP tips-All-Series:49526->50.7.87.83:http (CLOSE_WAIT)

```

# Example 2

List processes using a special file
```
lsof /path/to/file

```
# Example 3:
List all newtork connection
```
lsof -i
```

# Example 4:
List all network connections for a specefic user
```
lsof -i -u username

```
# Example 5:

this one is my favorite and get list of open port in host computer
```
lsof -i -n -P | grep LISTEN

```
