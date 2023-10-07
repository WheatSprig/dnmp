# dnmp
Docker / Openresty / MariaDB / PHP

-----
## 基本帮助
1. 首先请安装docker、docker compose、git
2. 接着克隆这个仓库到本地
3. 将仓库根目录下的.env.example文件改名为.env，并修改其中的配置，如数据库配置等
4. 阅读tutorial目录中的tutorial1.png和tutorial2.png内的说明
5. 阅读完毕以后 docker-compose up -d （docker-compose v1） 或者 docker compose up -d （docker-compose v2）启动全部容器
6. 待容器全部启动完毕以后，输入你的IP+WEBSERVER_ADMIN_PORT进入Nginx Proxy Manager的后台管理界面，修改相关参数，同时将您的Web文件放入WEBSITE_PATH所指向的目录内。

#### Nginx Proxy Manager初始账号和密码:
```
Email:    admin@example.com
Password: changeme
```

## 容器外

Web目录： `APP_ROOT_PATH/WEBSITE_PATH/DOMAIN_NAME`

NPM/Openresty配置： `APP_ROOT_PATH/WEBSERVER_CONF_FILE`

默认伪静态配置： `请将伪静态配置写入NPM Web Admin内`

## 容器内

Web目录: `/site/DOMAIN_NAME`