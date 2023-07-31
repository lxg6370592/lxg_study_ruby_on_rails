# study ruby on rails
## 1.ruby
### 1.1 下载ruby
<u>https://rubyinstaller.org/downloads/</u>

![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/down.png?raw=true) 

### 1.2 安装位置自己指定，其余默认即可
### 1.3 安装完会弹出如下界面：

![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/insta.png?raw=true) 

选择3，并按回车安装。
### 1.4 win+r打开cmd窗口
查看ruby
````
ruby -v
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/ruby_v.png?raw=true) 

查看gem
````
gem -v
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/gem_v.png?raw=true) 

## 2.更换gem源
### 2.1 查看gem源
````
gem sources -l
````
### 2.2 更换为国内源
````
gem sources --add https://gems.ruby-china.com
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
````
### 2.3 删除自带源
````
gem sources --remove https://rubygems.org/
````
### 2.4 再次查看gem源 确保更换成功
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/gem_source.png?raw=true) 
## 3.安装rails
````
gem install rails
````
查看rails 版本
````
rails -v
````
## 4.安装node.js 和 yarn，创建rails项目时需要。
<u>https://nodejs.org/en</u>
### 7.1查看命令
````
node -v
yarn -v
````

![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/node_v.png?raw=true) 

![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/yard_v.png?raw=true) 
## 5.创建项目
````
rails new 项目名称
````
## 6.启动项目
进入项目目录
启动命令
````
rails s -p 4001
````
访问localhost://4001

参考文档
<u>https://www.jianshu.com/p/1aefcb466f7f</u>

## 7.引入 Bootstrap
### 7.1 Gemfile添加导入
````
gem "bootstrap-sass", "~>3.4.1"
````
### 7.2 安装依赖
````
bundle install
````
### 7.3 application.scss 中导入 bootstrap
将 app/assets/stylesheets/application.css 重命名为app/assets/stylesheets/application.scss
添加内容
````
@import "bootstrap";
````
## 8.引入 jquery
### 8.1 在项目Gemfile文件中添加
````
gem 'jquery-rails'
````
### 8.2 Bundle项目环境命令
````
bundle install
````
### 8.3 在app/views/layouts/application.html.erb文件中添加
````
<%= javascript_include_tag "jquery.min" %>
<%= javascript_include_tag "jquery_ujs" %>
````
### 8.4 在app/assets/config/manifest.js文件中添加
````
//= link jquery.min.js
//= link jquery_ujs.js
````