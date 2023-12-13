APISIX部署
APISIX安装
apisix支持多种安装方式，包括源码编译安装，rpm包，docker安装，helm包安装。本文采用rpm包的安装方式

安装环境： centos7 需要提前安装依赖库：curl wget git gcc openresty-openssl111-devel unzip pcre pcre-devel openldap-devel openresty

# 安装依赖库
yum install pcre pcre-devel openresty openresty-openssl111-devel openladp-devel
# 安装rpm仓库
yum-config-manager --add-repo https://repos.apiseven.com/packages/centos/apache-apisix.repo
# 安装openresty
yum install -y https://repos.apiseven.com/packages/centos/apache-apisix-repo-1.0-1.noarch.rpm
# 安装apisix
yum install apisix-base-1.21.4.1.8-0.el7.x86_64 apisix-3.3.0-0.el7.x86_64
安装并启动etcd
ETCD_VERSION='3.5.4'
wget https://github.com/etcd-io/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz
tar -xvf etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
  cd etcd-v${ETCD_VERSION}-linux-amd64 && \
  sudo cp -a etcd etcdctl /usr/bin/
nohup etcd >/tmp/etcd.log 2>&1 &

systemctl start apisix



https://www.ctyun.cn/developer/article/424184168378437
