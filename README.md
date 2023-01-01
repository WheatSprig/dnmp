# dnmp
Docker / Nginx / MariaDB / PHP

-----
## 容器外

Web目录： `./site/DOMAIN_NAME`

Nginx配置： `./nginx/etc/nginx/conf`

默认伪静态配置： `./nginx/etc/nginx/rewrite`

## 容器内

Nginx容器内调用伪静态：`/etc/nginx/rewrite/应用名称.conf`