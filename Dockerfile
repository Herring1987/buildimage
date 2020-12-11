FROM rook/ceph:v1.5.1
MAINTAINER HerringHong
WORKDIR /myworkspace
## 安装git和编译环境，获取fio源码
RUN cd /myworkspace && yum install -y git && yum -y install gcc gcc-c++ autoconf automake make && git clone git://git.kernel.dk/fio.git
## 编译并安装fio工具
RUN cd fio && ./configure && make && make install
