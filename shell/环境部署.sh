#步骤
#安装yum
#安装git
#1，安装nodejs
#2，安装工具n
#安装nodejs 4.4.3
#安装cnpm
#安装fis3
# 安装fis3 ejs插件
# 安装fis3 loader插件
#全局安装 pm2
#全局安装 mocha
# 全局安装mochawesome
#全局安装 nightwatch

yum install epel-release && yum install nodejs && yum install npm && npm install n -g && n 4.4.4  && npm install -g cnpm --registry=https://registry.npm.taobao.org && npm install fis3 -g && cnpm install fis-parse-ejs -g && cnpm install fis3-postpackager-loader -g && cnpm install pm2 -g && cnpm install mocha -g && cnpm install mochawesome -g && cnpm install nightwatch -g;
cd /;
mkdir data;
mkdir data/host;
mkdir data/host/go;
mkdir data/host/go/bin;
mkdir data/host/go/src;
mkdir data/host/go/pkg;
mkdir data/soft;
cd data/soft;
wget http://golangtc.com/static/go/1.6.2/go1.6.2.linux-386.tar.gz && mkdir golang && tar -zxvf go1.6.2.linux-386.tar.gz -C /data/soft/golang && vi /etc/profile
