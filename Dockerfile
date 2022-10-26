# 选择运行时基础镜像
FROM openanolis/anolisos:8.6

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /usr/local/dragonwell-8

# 添加镜像
ADD Alibaba_Dragonwell_8.8.9_x64_linux.tar.gz .
RUN mv jdk8u302-b01/* .

# 设置环境变量
ENV JAVA_HOME=/usr/local/dragonwell-8
ENV JAVA_VERSION=8u302
ENV DRAGONWELL_VERSION=8.8.9
ENV PATH=/usr/local/dragonwell-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
