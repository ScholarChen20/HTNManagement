# 高血压居家健康管理系统

本项目是使用 Spring Boot 框架开发的一个高血压居家健康管理系统，由用户、医生和管理员三种角色使用。

## 技术栈

- 后端框架
  - SpringBoot
  - mybatis-plus
- 数据库
  - MySql
- 前端框架
  - Vue
  - Uniapp
  - ElementUI
  - ECharts
- 前后端通信
  - RESTful API

## Windows 开发环境搭建

1. 安装 Java JDK 18 并配置环境变量
2. 安装 MySQL数据库并创建相应数据库

   - 创建 MySQL 数据库与表: 运行 [mysql.sql](./db/mysql.sql)

3. 安装 Maven 构建工具
4. 下载安装 Nginx 并完成以下配置

   ```
   # 在 http 这一项下配置以下内容

   map $http_upgrade $connection_upgrade{
   	default upgrade;
   	'' close;
   }

   upstream webservers{
     server 127.0.0.1:8080 weight=90 ;
     #server 127.0.0.1:8088 weight=10 ;
   }

   server {
       listen       80;
       server_name  localhost;

       location / {
           root   html/sky;
           index  index.html index.htm;
       }

       # 反向代理,处理管理端发送的请求
       location /api/ {
   		proxy_pass   http://localhost:8080/admin/;
           #proxy_pass   http://webservers/admin/;
       }

   	# 反向代理,处理用户端发送的请求
       location /user/ {
           proxy_pass   http://webservers/user/;
       }

   	# WebSocket
   	location /ws/ {
           proxy_pass   http://webservers/ws/;
   		proxy_http_version 1.1;
   		proxy_read_timeout 3600s;
   		proxy_set_header Upgrade $http_upgrade;
   		proxy_set_header Connection "$connection_upgrade";
       }

       location /media {
           root 配置媒体文件位置; # eg: D:/static
           # 注：在 D:/static 目录下创建 media 文件夹
       }
   }
   ```

5. 克隆项目到本地 `git clone https://github.com/ScholarChen20/HTNManagement.git `
6. 修改配置文件 [application.yml](./sky-server/src/main/resources/application.yml)

   ```yml
   spring:
    datasource:
        driverClassName: com.mysql.cj.jdbc.Driver
        url: jdbc:mysql://127.0.0.1:3307/数据库名
        username: root
        password: 123456
   servlet:
      multipart:
        max-file-size: 300MB
        max-request-size: 300MB
   resources:
      static-locations: classpath:static/,file:static/
   
   ```

7. 在 (./src/main/java/utils) 目录下找到 `Wechat.java` 文件，修改以下配置

   ```
   public static JSONObject getSessionKeyOrOpenId(String code) {
        String requestUrl = "https://api.weixin.qq.com/sns/jscode2session";
        Map<String, String> requestUrlParam = new HashMap<>();
        // https://mp.weixin.qq.com/wxopen/devprofile?action=get_profile&token=164113089&lang=zh_CN
        //小程序appId 需要修改成自己的id
        requestUrlParam.put("appid", "wxf2f3ec1435991131");
        //小程序secret 由自己id生成密钥
        requestUrlParam.put("secret", "80cc45346775bb1286bd3b5fa620d81c");
        
   ```
8. 使用Hbuilder X打开[resources](./src/main/resources/front)目录文件，运行到小程序模拟器即可
9. 配置node.js，在终端运行[resources](./src/main/resources/admin)目录下的1-install.bat和2-run.bat文件
10. 运行项目
11. 小程序页面展示
![1](https://github.com/user-attachments/assets/d3bc6fca-75a4-49b3-a7ce-256e5841c68b)
![2](https://github.com/user-attachments/assets/8b31e518-bfa9-449f-af86-3c1792e5ee8e)

