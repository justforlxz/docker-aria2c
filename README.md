该项目是将aria2c封装进docker并提供服务。

    git clone https://github.com/kirigayakazushin/docker-aria2c.git
    cd docker-aria2c && docker build -t kirigayakazushin/docker-aria2c .


下载好镜像，然后保存一份运行

    docker run -p 6800:6800 --name docker-aria2c -d \
    -v {下载目录的绝对路径}:/aria2/downloads \
    kirigayakazushin/docker-aria2c

打开浏览器，访问[http://yaaw.qiniudn.com/](http://yaaw.qiniudn.com/)
输入

    http://token:secret@127.0.0.1:6800/jsonrpc
