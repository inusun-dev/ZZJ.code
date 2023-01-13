# Nginx安装

## yum/apt安装






## 手动安装

1. 编译工具和库文件

查看已安装的包

```shell
yum list installed make zlib zlib-devel gcc-c++ libtool  openssl openssl-devel
```

![image-20230113094126215](https://s2.loli.net/2023/01/13/DxtZPNEWlA3Rw2C.png)

安装编译工具和库文件

```shell
yum -y install make zlib zlib-devel gcc-c++ libtool  openssl openssl-devel
```

2. 安装PCRE

PCRE 作用是让 Nginx 支持 Rewrite 功能。

下载地址: [PCRE]([PCRE - Browse /pcre at SourceForge.net](https://sourceforge.net/projects/pcre/files/pcre/))

```shell
# 查看是否安装
yum list installed pcre
```

![image-20230113094514102](https://s2.loli.net/2023/01/13/qHCWBot42zmXVib.png)

下载 PCRE 安装包，下载地址： http://downloads.sourceforge.net/project/pcre/pcre/8.35/pcre-8.35.tar.gz

```
[root@bogon src]# cd /usr/local/src/
[root@bogon src]# wget http://downloads.sourceforge.net/project/pcre/pcre/8.35/pcre-8.35.tar.gz
```

![img](https://www.runoob.com/wp-content/uploads/2015/01/nginx1.png)

解压安装包:

```
[root@bogon src]# tar zxvf pcre-8.35.tar.gz
```

进入安装包目录

```
[root@bogon src]# cd pcre-8.35
```

编译安装 

```
[root@bogon pcre-8.35]# ./configure
[root@bogon pcre-8.35]# make && make install
```

查看pcre版本

```
[root@bogon pcre-8.35]# pcre-config --version
```

![img](https://www.runoob.com/wp-content/uploads/2015/01/nginx2.png)

3. 下载 Nginx，下载地址：https://nginx.org/en/download.html

```
cd /usr/local/src/
wget http://nginx.org/download/nginx-1.6.2.tar.gz
```

![img](https://www.runoob.com/wp-content/uploads/2015/01/nginx3.png) 2、解压安装包

```
tar zxvf nginx-1.6.2.tar.gz
```

3、进入安装包目录

```
[root@bogon src]# cd nginx-1.6.2
```

4、编译安装

```
[root@bogon nginx-1.6.2]# ./configure --prefix=/usr/local/webserver/nginx --with-http_stub_status_module --with-http_ssl_module --with-pcre=/usr/local/src/pcre-8.35
[root@bogon nginx-1.6.2]# make
[root@bogon nginx-1.6.2]# make install
```

5、查看nginx版本

```
[root@bogon nginx-1.6.2]# /usr/local/webserver/nginx/sbin/nginx -v
```

![img](https://www.runoob.com/wp-content/uploads/2015/01/nginx4.png)