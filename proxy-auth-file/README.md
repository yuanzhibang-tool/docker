# http 和 https 代理

## 使用 AuthUserFile 来验证代理信息

### _使用:_

`cd 当前目录`

`修改run.sh中的信息,账号密码`

`./run.sh`

---

### _测试:_

_ubuntu|linux_

`curl -x PROXY_USER:PROXY_PASSWORD@YOUR_IP:YOUR_PORT https://api-service.yuanzhibang.com/api/v1/Ip/getClientIp`
