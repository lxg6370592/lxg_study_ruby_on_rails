# study docker
## 1.下载URU
uru官方网站：https://bitbucket.org/jonforums/uru/wiki/Home
## 2.安装URU
解压缩DL uru-0.x.x-windows-x86.7z
将uru_rt.exe移至合适的文件夹
移至C:\Tools\uru
要在命令行上使用uru，请将路径传递到目标
````
$ uru_rt admin install
---> Installing uru into C:\Tools\uru
````
确认uru.bat和uru.ps1在同一文件夹中生成
## 3.注册Ruby的路径
````
$ uru admin add C:\Ruby24-x64\bin
---> Registered ruby at `C:\Ruby24-x64\bin` as `246p354`
````
检查是否已注册
````
$ uru ls
246p354     : ruby 2.4.6p354 (2019-04-01 revision 67394) [x64-mingw32]
255p157     : ruby 2.5.5p157 (2019-03-15 revision 67260) [x64-mingw32]
````
## 4.使用URU切换ruby版本
路径获得
````
$ ruby -v
ruby 2.5.5p157 (2019-03-15 revision 67260) [x64-mingw32]
````
切换到Ruby
````
$ uru 246p354
---> now using ruby 2.4.6-p354 tagged as `246p354`
````
确认当前版本
````
$ ruby -v
ruby 2.4.6p354 (2019-04-01 revision 67394) [x64-mingw32]
````
uru本身是一个批处理文件，因此必须首先添加call
````
call uru 246p354
````
## 5..ruby-version文件
创建一个.ruby版本文件
当我尝试在资源管理器中正常重命名新的文本文件时，出现"请输入文件名"。
通过在文本编辑器中保存新文件时指定名称可以避免这种情况。
.ruby-version文件仅包含您要使用的Ruby版本(当您要使用Ruby 2.4时)
.ruby版本
````
2.4
````
使用auto选项更改为.ruby-version中列出的版本。
````
$ uru auto
---> now using ruby 2.4.6-p354 tagged as `246p354`
````