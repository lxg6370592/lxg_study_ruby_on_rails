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
