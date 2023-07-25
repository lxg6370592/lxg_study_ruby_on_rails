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
## 3.添加路由
routes文件中添加
````
resources :blogs
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/routes_blog.png?raw=true) 
## 4.修改db文件
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_db.png?raw=true) 
### 创建表
````
rails db:migrate
````
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_create_db.png?raw=true) 
PS：复健的索引要先根据对象依赖关系创建了复健才可以加入到db文件中，不然执行建表会报错
## 5.修改对象文件
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_model.png?raw=true) 
## 6.修改controller文件
![Image](https://github.com/lxg6370592/lxg_study_ruby_on_rails/blob/main/image/blog_controller.png?raw=true) 