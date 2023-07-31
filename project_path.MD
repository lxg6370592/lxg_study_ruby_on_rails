# study ruby on rails
## 1.MVC代码目录
\circles\app
### 1.1 controllers目录
控制器目录
\circles\app\controllers
### 1.2 model目录
模型对象
\circles\app\models
### 1.3 view目录
页面
\circles\app\views
#### 1.3.1 模板目录
设置公用view模板
\circles\app\views\layouts
文件：application.html.erb
````
<%= yield %>
````
使用该标签显示实际view页面
#### 1.3.2 静态文件目录
\circles\app\assets

## 2.引入GEM
操作目标文件Gemfile
````
gem "bootstrap-sass", "~>3.4.1"
````
在文件夹目录下执行bundle导入

![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/bundle.png?raw=true) 
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/bundel_end.png?raw=true) 


## 3.路由文件 routes.rb
\circles\config

````
resources :users
resources :sessions
````
命令行中显示目前路由命令
````
rails routes
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/routes.png?raw=true) 
## 4.数据库文件 \circles\config\database.yml
````
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  host: 127.0.0.1
  username: root
  password:
````