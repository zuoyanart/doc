Git - 使用手册
=============

**在使用git之前首先要安装git，在官方网站下载 git Windows 版或 git Linux 版，然后安装。**

	TortoiseGit官网下载地址：http://code.google.com/p/tortoisegit/
	msysGit官网下载地址：http://msysgit.github.com/ 

#####Git 进行代码版本管理时，有两种操作方式：**图形界面GUI** 和 **命令行Command**。

**图形界面GUI：**有平台限制，目前仅支持Windows系统，Linux（Unix）都是命令行模。

**命令行Command：**没有平台限制，Windows、Linux（Unix、Mac OS X）下都支持，通过 git add dir/files 添加文件，没有文件数限制。


##Git GUI（图形界面）

###a.创建新的版本库
> 在项目文件夹用鼠标右键点击，可以看到Git和TortoiseGit已经嵌入右键了，选择“Git Create repository here（Git 在这里创建版本库）”，然后点击“OK”按钮，再点击“Proceed”，这样就会在项目文件中创建了一个“.git”的隐藏目录。

###b.设置TortoiseGit
> 鼠标右键，选择“TortoiseGit”->“Settings（设置）”，在“User Info”输入Name和Email。点击“Remote”，在Remote输入名称，URL输入Git的HTTPS或者SSH地址。点击“Add New/Save”按钮添加一个项目


###c.拉取

* 鼠标右键，选择“TortoiseGit”->"Pull(拉取)",弹出以下对话框，确定即可。
	![](http://i.imgur.com/QNehs4B.png)

###d.提交更改

* 鼠标右键，选择“Git Commit ->'master'”,弹出以下对话框，

	![](http://i.imgur.com/BB1p9s2.png)

	选中更改的内容，在上面的输入框里填写注释，然后 “确定”，弹出以下对话框，

	![](http://i.imgur.com/tiMoBzz.png)

	点击推送，在次弹出对话框，推送完毕直接 “关闭” 就可以了。

###e.查看版本历史记录

* 鼠标右键，选择择“TortoiseGit”->“Show log(显示日志)”。


###e.分支

分支是用来将特性开发绝缘开来的。在你创建仓库的时候，master 是“默认的”。在其他分支上进行开发，完成后再将它们合并到主分支上。

* 鼠标右键，选择择“TortoiseGit”->“Create Branch(创建分支)”。

	![](http://i.imgur.com/eVAHdVM.png)

	选择复选框中的,切换至分支，然后 确定。此时再点右键，发现菜单变了，再次提交的时候就会提交到刚才建立的分支v1.1。

	也可以在 “TortoiseGit”->“Switch/Checkout(切换/检出)”。来切换分支。



##Git Bash（命令行）

Git基本命令行操作

a. 新建Git仓库，创建新文件夹

	git init
 
b. 添加文件到git索引

	git add <filename>  --- 单个文件添加
	git add *　　--- 全部文件添加

c. 提交到本地仓库

	git commit -m "代码提交描述"

d. 提交到远端仓库

	git push origin master (master可以换成你想要推送的任何分支)


###分支：

	git checkout -b lee

b. 切换回主分支

	git checkout master

c. 把新建的分支删除

	git branch -d lee

d. 再push分支到远端仓库前，该分支不被人所见到

	git push origin <branch>


###更新与合并

a. 更新本地仓库

	git pull

b. 自动合并分支，多时引起冲突，冲突后需要手动解决

	git merge <branch>

c. 合并后需要添加

	git add <branch>

d. 合并前建议使用对比工具
	
	git diff <source_branch> <target_branch>

e. 软件发布是创建标签，标签与标记需要唯一

	获取提交ID: git log
	创建标签: git  tag  1.2.3  提交ID

f. 回退到某个历史版本

	获取提交ID: git log
	回退到指定版本 : git reset --hard 提交ID

g. 使用reset命令后log是得不到充分信息的，这时我们需要使用reflog，然后再reset

	git reflog

h. 彩色git输出

	git config color.ui true

i. 查看远程分支与本地分支

	git branch -a

j. push一个指定分支名到远程分支，如果远程服务器没有这个分支则创建

	git push origin <brancheName>

k. 删除一个远程分支

	git push origin --delete <branchName>

l. 如果使用rm误删了文件，可以通过两步恢复

	git reset HRAD 文件名
	git checkout -- 文件名

m. 删除文件
	
	git rm 文件名    （同时删除工作目录与本地仓库的文件）
	git rm --cached 文件名     （删除本地仓库文件，并不影响工作目录）

n. 改变上传地址

	git remote set-url origin ssh://git@git.sailor.cn/~/WeiYu

o. 根据服务器的地址创建本地git与服务器的地址关联
	
	git remote add origin ssh://lht@git_server/var/lib/scm/git/lht/test.git