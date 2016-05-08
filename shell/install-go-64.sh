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
wget http://golangtc.com/static/go/1.6.2/go1.6.2.linux-amd64.tar.gz && mkdir golang && tar -zxvf go1.6.2.linux-amd64.tar.gz -C /data/soft/golang;
echo "export GOROOT=/data/soft/golang/go" >> /etc/profile;
echo "export GOPATH=/data/host/go" >> /etc/profile;
echo "export GOBIN=$GOROOT/bin" >> /etc/profile;
echo "export GOPKG=$GOPATH/pkg/linux_amd64" >> /etc/profile;
echo "export GOARCH=amd64" >> /etc/profile;
echo "export GOOS=linux" >> /etc/profile;
echo "export PATH=$PATH:$GOBIN:$GOPKG:$GOPATH/bin" >> /etc/profile;
source /etc/profile && go version;
