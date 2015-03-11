Git - 使用手册
=============

**在使用git之前首先要安装git，在官方网站下载 git Windows 版或 git Linux 版，然后安装。**

	TortoiseGit官网下载地址：http://code.google.com/p/tortoisegit/
	msysGit官网下载地址：http://msysgit.github.com/ 

#####Git 进行代码版本管理时，有两种操作方式：**图形界面GUI** 和 **命令行Command**。

**图形界面GUI：**有平台限制，目前仅支持Windows系统，Linux（Unix）都是命令行模。

**命令行Command：**没有平台限制，Windows、Linux（Unix、Mac OS X）下都支持，通过 git add dir/files 添加文件，没有文件数限制。

##以下为Git使用流程，其中a，b步骤设置一次即可，频繁使用的流程为[c-j]

###a.创建新的版本库
在项目文件夹用鼠标右键点击，可以看到Git和TortoiseGit已经嵌入右键了，选择“Git Create repository here（Git 在这里创建版本库）”，然后点击“OK”按钮，再点击“Proceed”，这样就会在项目文件中创建了一个“.git”的隐藏目录。

###b.设置TortoiseGit
 鼠标右键，选择“TortoiseGit”->“Settings（设置）”，在“User Info”输入Name和Email。点击“Remote”，在Remote输入名称，URL输入Git的HTTPS或者SSH地址。点击“Add New/Save”按钮添加一个项目

**注意：保存用户名和密码，以避免每次提交都要输入的麻烦，在 “C:\Users\Administrator\” 文件夹下新建一个没有名字以“.gitconfig”结尾的文件，编辑该文件，写入两行代码：**

````js
[credential] 
	helper = store
````  

###c.克隆已有版本库
* 鼠标右键，选择“Git 克隆...”，弹出以下对话框，确定即可。

	![](http://i.imgur.com/9SGV3jj.png)

###d.拉取
**注意：在拉取之前建议先备份本地版本库，避免拉取出错造成文件代码丢失！**
* 鼠标右键，选择“TortoiseGit”->"Pull(拉取)"，弹出以下对话框，确定即可。

	![](http://i.imgur.com/QNehs4B.png)

###e.创建新分支
分支是用来将特性开发绝缘开来的。在你创建仓库的时候，master 是“默认的”。在其他分支上进行开发，完成后再将它们合并到主分支上。

* 鼠标右键，选择择“TortoiseGit”->“Create Branch(创建分支)”。

	![](http://i.imgur.com/eVAHdVM.png)

###f.切换分支
	
* 鼠标右键，选择 “TortoiseGit”->“Switch/Checkout(切换/检出)”。选择要切换的分支。

	![](http://i.imgur.com/hWPR3tT.png)

	此时再点右键，发现菜单变了，再次提交的时候就会提交到刚才建立的分支。

###g.提交更改

* 鼠标右键，选择“Git Commit ->'master'”,弹出以下对话框，

	![](http://i.imgur.com/BB1p9s2.png)

	选中更改的内容，在上面的输入框里填写注释，然后 “确定”，弹出以下对话框，

	![](http://i.imgur.com/tiMoBzz.png)

	点击推送，在次弹出对话框，推送完毕直接 “关闭” 就可以了。

	**注意：不用每次修改后都提交，可以在一天工作结束后再将自己本地修改的版本库统一提交。**

###h.完成某分支工作后，将会考虑将该分支上的工作合并到主分支上面，这时我们将进行分支合并操作。
* 进行分支合并之前我们需要明确哪个分支将要合并到哪个分支，首先要“CheckOut/Switch”到将要合并到的分支（如master分支）,然后通过“Merge”菜单打开分支合并对话框，选择需要合并的分支。

	![](http://i.imgur.com/nQvqmFN.png)
	
* 分支合并成功后，我们即可以通过PUSH操作将合并上传到中心服务器。

###i.删除本地/远程分支
当我们将分支合并到主分支，或者放弃该分支的时候，可以对分支进行删除操作。
* 首先打开“CheckOut/Switch”对话框，通过“Switch to > Branch”更多按钮打开分支列表,选择相应的分支，单击右键，选择删除。

	![](http://i.imgur.com/ZU2aW82.png)

###j.查看分支及修改log

* 鼠标右键，选择择“TortoiseGit”->“Show log(显示日志)”。

	![](http://i.imgur.com/G0G6iJ7.png)
* 勾选All Branches可以看到所有分支的情况。