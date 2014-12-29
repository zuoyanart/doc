### 项目协作布置流程(win7)：

> 1、官网下载nodejs, 点击install默认安装
    
> 2、nodejs的编译需要Python(2.6~2.8)、node-gyp。Python到官网自行下载安装，node-gyp需要通过npm安装

 3、命令行运行 npm install -g supervisor 全局安装supervisor, supervisor 会监视你对代码的改动, 并自动重启 Node.js
    
    4、全局安装, fis; 命令行执行 npm install -g fis
    
    5、下载项目开发文件github/spnt/cms
    
    6、命令行打开项目文件目录, 然后执行 npm install
    
    另外, 为了减少可能的麻烦(github响应速度慢、被屏蔽), 建议设置npm从中国镜像安装, 方法如下:
    npm config set registry http://registry.cnpmjs.org
    npm info underscore(如果上面配置正确, 会有字符串response)
    
    7、设置开发环境命令
    linux: NODE_ENV=production
    windows: set NODE_ENV=production
    

    
    




##fis的使用：
    1、fis使用node.js开发，以npm包的形式发布。使用前先安装node.js
    
    2、命令行执行 "npm install -g fis" 命令
    
    3、fis release 命令
        --watch(-w)  支持对项目进行增量编译，监听文件变化再触发编译
        --md5(-m)  在编译的时候可以对文件自动加md5戳
        --dest(-d)  指定编译后的代码部署路径
        --optimize(-o)  对js、css、html进行压缩
        --domains(-D)  为资源添加domain域名
        
    4、更多配置命令，请访问fis官方网站
     




##路由规则说明：

    1、访问路径：'/' , 执行controller/index.js的index方法
    
    2、访问路径： '/home' , home页面,执行controller/home.js的index方法
    
    3、访问路径：'/home/login' , 登陆页面,执行controller/home.js下的login方法

    









