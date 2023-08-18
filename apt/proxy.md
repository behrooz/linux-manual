# set proxy to apt

Create a new configuration file named proxy.conf.

```
sudo touch /etc/apt/apt.conf.d/proxy.conf
```

Open the proxy.conf file in a text editor.

```
sudo vi /etc/apt/apt.conf.d/proxy.conf
```

Add the following line to set your HTTP proxy.

```
Acquire::http::Proxy "http://user:password@proxy.server:port/";
```

Add the following line to set your HTTPS proxy.
```
Acquire::https::Proxy "http://user:password@proxy.server:port/";
```
Save your changes and exit the text editor.

