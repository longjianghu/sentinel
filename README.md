# Sentinel
阿里巴巴 Sentinel镜像

# 构建

docker build -t longjianghu/sentinel:1.8.3 --build-arg ver=1.8.3 ./

# 运行

docker run --name sentinel -p 8080:8080 --restart=always -d longjianghu/sentinel:1.8.3
