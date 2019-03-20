该项目是将aria2c封装进docker并提供服务。

    git clone https://github.com/justforlxz/docker-aria2c.git
    cd docker-aria2c && docker build -t justforlxz/docker-aria2c .


下载好镜像，然后保存一份运行

```
docker run -p 6800:6800 --name docker-aria2c -d \
-v {下载目录的绝对路径}:/aria2/downloads \
-v {下载目录的绝对路径}:/etc/aria2-config \
justforlxz/docker-aria2c
```

或者

```
  aria2c:
    build:
      context: ./volumes/docker-aria2c
      dockerfile: Dockerfile
    network_mode: "host"
    volumes:
        - "{下载目录的绝对路径}:/aria2/downloads/"
        - "./volumes/docker-aria2c:/etc/aria2-config/"
    restart: always
```

打开浏览器，访问[http://yaaw.qiniudn.com/](http://yaaw.qiniudn.com/)
输入
```
http://token:secret@127.0.0.1:6800/jsonrpc
```
