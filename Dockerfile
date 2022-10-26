# 选择运行时基础镜像
FROM openanolis/anolisos:8.6

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

# 工作空间
WORKDIR /usr/local/dragonwell-8

# 添加镜像
ADD Alibaba_Dragonwell_8.10.11_x64_linux.tar.gz .
RUN mv dragonwell-8.10.11/* .

# 设置环境变量
ENV JAVA_HOME=/usr/local/dragonwell-8
ENV JAVA_VERSION=8u322
ENV DRAGONWELL_VERSION=8.10.11
ENV PATH=/usr/local/dragonwell-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
