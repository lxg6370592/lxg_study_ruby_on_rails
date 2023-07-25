# study ruby on rails
## 1.代码目录MVC
\circles\app
### 1.controllers目录
控制器目录
\circles\app\controllers
### 2.model目录
模型对象
\circles\app\models
### 3.view目录
页面
\circles\app\views
#### 1.模板目录
设置公用view模板
\circles\app\views\layouts
文件：application.html.erb
````
<%= yield %>
````
使用该标签显示实际view页面
#### 2.静态文件目录
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
