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
# 安装golang
#
#
#
#安装nodejs
yum install epel-release && yum install git && yum install nodejs && yum install npm && npm install n -g && n 4.4.4  && npm install -g cnpm --registry=https://registry.npm.taobao.org && npm install fis3 -g && cnpm install fis-parser-ejs -g && cnpm install -g fis-parser-swigt && cnpm install -g fis3-postpackager-loader && cnpm install fis3-hook-commonjs -g  && cnpm install pm2 -g && cnpm install mocha -g && cnpm install mochawesome -g && cnpm install nightwatch -g;
#安装golang 64位
cd /;
mkdir data;
mkdir data/host;
mkdir data/host/go;
mkdir data/host/go/bin;
mkdir data/host/go/src;
mkdir data/host/go/pkg;
mkdir data/soft;
cd data/soft;
wget http://golangtc.com/static/go/1.6.2/go1.6.2.linux-amd64.tar.gz && mkdir golang && tar -zxvf go1.6.2.linux-386.tar.gz -C /data/soft/golang;
echo "export GOROOT=/data/soft/golang/go" >> /etc/profile;
echo "export GOPATH=/data/host/go" >> /etc/profile;
echo "export GOBIN=$GOROOT/bin" >> /etc/profile;
echo "export GOPKG=$GOPATH/pkg/linux_amd64" >> /etc/profile;
echo "export GOARCH=amd64" >> /etc/profile;
echo "export GOOS=linux" >> /etc/profile;
echo "export PATH=$PATH:$GOBIN:$GOPKG:$GOPATH/bin" >> /etc/profile;
source /etc/profile && go version;


#npm ls mocha || npm install mocha -g  && git clone https://github.com/zuoyanart/pizzaManage && cd pizzaManage && cnpm install && cd fis-static && fis3 release -d ../ && cd ../ && npm start & sleep 20s;&&echo -e '\003' && cd app;mocha;
