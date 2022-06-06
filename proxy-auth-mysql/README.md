# http 和 https 代理

使用 mysql 来验证代理信息

使用

`cd 当前目录`

`./run.sh`

`通过本机:8080端口配置mysql,具体密码见docker-compose.yml`

注意:密码生成方式`php scripts/create_proxy_pwd.php`没有安装 php 的话,执行`sudo apt install -y php7.4-cli`

测试

ubuntu|linux

`curl -x PROXY_USER:PROXY_PASSWORD@YOUR_IP:YOUR_PORT https://api-service.yuanzhibang.com/api/v1/Ip/getClientIp`
