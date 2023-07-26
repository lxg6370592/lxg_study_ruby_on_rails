# study ruby on rails
## 1.下载rubyinstaller
<u>https://rubyinstaller.org/downloads/</u>
## 2.安装位置自己指定，其余默认即可。
## 3.安装完会弹出如下界面：
选择3，并按回车安装。
## 4. win+r打开cmd窗口
查看ruby
````
ruby -v
````
查看gem
````
gem -v
````
## 5.更换gem源
### 5.1 查看gem源
````
gem sources -l
````
### 5.2 更换为国内源
````
gem sources --add https://gems.ruby-china.com
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
````
### 5.3删除自带源
````
gem sources --remove https://rubygems.org/
````
### 5.4再次查看gem源 确保更换成功
## 6.安装rails
````
gem install rails
````
查看rails 版本
````
rails -v
````
## 7.安装node.js 和 yarn，创建rails项目时需要。
<u>https://nodejs.org/en</u>
### 7.1查看命令
````
node -v
yarn -v
````
## 8创建项目
````
rails new 项目名称
````
启动项目
进入项目目录
启动命令
````
rails s -p 4001
````
访问localhost://4001

源文档
<u>https://www.jianshu.com/p/1aefcb466f7f</u>

## 引入 Bootstrap
Gemfile添加导入
````
gem "bootstrap-sass", "~>3.4.1"
````
安装依赖
````
bundle install
````
application.scss 中导入 bootstrap
将 app/assets/stylesheets/application.css 重命名为app/assets/stylesheets/application.scss
添加内容
````
@import "bootstrap";
````
## 引入 jquery
### 1.在项目Gemfile文件中添加
````
gem 'jquery-rails'
````
### 2.Bundle项目环境命令
````
bundle install
````
### 3.在app/views/layouts/application.html.erb文件中添加
````
<%= javascript_include_tag "jquery.min" %>
<%= javascript_include_tag "jquery_ujs" %>
````
### 4.在app/assets/config/manifest.js文件中添加
````
//= link jquery.min.js
//= link jquery_ujs.js
````