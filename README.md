# Sentinel
阿里巴巴 Sentinel镜像

# 构建

docker build -t longjianghu/sentinel:1.8.3 --build-arg ver=1.8.3 ./

# 运行

> 日志目录位于/root/logs/csp,如有需要请自行挂载

docker run --name sentinel -p 8080:8080 --restart=always -d longjianghu/sentinel:1.8.3

自定义用户名和密码参数：

-Dsentinel.dashboard.auth.username=sentinel

-Dsentinel.dashboard.auth.password=123456

运行示例：

docker run --name sentinel -p 8080:8080 --restart=always -d longjianghu/sentinel:1.8.3 -Dsentinel.dashboard.auth.username=sentinel -Dsentinel.dashboard.auth.password=123456