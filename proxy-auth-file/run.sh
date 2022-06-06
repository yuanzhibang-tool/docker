#! /bin/bash
# 先构建image
docker build -t proxy-auth-file:latest .
# 执行并配置参数
docker run -d --restart always \
-p 7733:7789 \
--env PROXY_USER=123 \
--env PROXY_PASSWORD=121 \
proxy-auth-file:latest \