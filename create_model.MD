# study ruby on rails
## 1.rails命令创建controller
````
rails g controller blog
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/create_controller.png?raw=true) 
## 2.rails命令创建model
````
rails g model blog
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/create_model.png?raw=true) 

## 3.修改db文件，编写数据库表内容
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_db.png?raw=true) 
### 运行数据迁移命令
````
rails db:migrate
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_create_db.png?raw=true) 

PS：复健的索引要先根据对象依赖关系创建了复健才可以加入到db文件中，不然执行建表会报错
## 4.修改对象文件
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_model.png?raw=true) 
## 5.修改controller文件
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_controller.png?raw=true) 

rails7 filter改为action
## 6.添加路由
routes文件中添加
````
resources :blogs
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/routes_blog.png?raw=true) 
## 7.生成DB修改文件
````
rails g migration add_users_password_colum
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/create_db.png?raw=true) 

运营db迁移命令
````
rails db:migrate
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/add_users_password.png?raw=true) 
