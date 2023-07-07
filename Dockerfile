# 使用一个基础镜像，例如 ubuntu 22.04
FROM ubuntu:22.04

# 在容器中创建一个目录，将V2Ray二进制文件复制到该目录中
RUN mkdir -p /opt/v2ray
COPY v2ray /opt/v2ray

# 更新apt源并安装依赖
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl

# 设置启动命令，当容器启动时执行
CMD ["/opt/v2ray/v2ray", "--config=/opt/v2ray/config.json"]
