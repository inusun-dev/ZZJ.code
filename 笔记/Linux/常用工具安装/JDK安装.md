# JDK安装

## 通过yum安装

需要注意的是,此种方法安装的jdk都是Open JDK

1. 查看源中的jdk包

```shell
yum list | grep jdk
```

执行案例

![image-20230112155056610](https://s2.loli.net/2023/01/12/2mcEMSug6qxahBO.png)

2. 安装

```shell
yum install [包名]
	例:	 yum install -y java-1.8.0-openjdk*
```

## 手动安装

安装包下载地址

[Oracle JDK]([Java Downloads | Oracle Singapore](https://www.oracle.com/sg/java/technologies/downloads/))

![image-20230112155647281](https://s2.loli.net/2023/01/12/PBzfZhDKRoGMOvY.png)

[Open JDK]([OpenJDK: Download and install](https://openjdk.org/install/))

![](https://s2.loli.net/2023/01/12/5WhAOMozvtxKcDd.png)

安装流程

1. 下载安装包并上传服务器



2. 解压

```shell
tar -zxvf [压缩包]
	例: tar -zxvf jdk-8u351-linux-x64.tar.gz
```

3. 配置环境变量

```shell
# 在~/.bashrc文件中追加一下内容

# jdk环境变量
export JAVA_HOME=/home/jdk/jdk1.8.0_351
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$JAVA_HOME/bin:$PATH

# 然后执行
source ~/.bashrc
```

