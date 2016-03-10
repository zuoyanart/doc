EJS语法
====
###EJS运行模型
ejs获取远程模板用的是ajax方法中的同步，不执行完成浏览器是被锁死的

###EJS模板标签：

~~~
<% code %>：JavaScript 代码

<%= code %>：显示替换过 HTML 特殊字符的内容。

<%- code %>：显示原始 HTML 内容。

<%- include src %> :加载模版
~~~


注意： 
~~~ 
<%= code %>
~~~
 和 
~~~
<%- code %>
~~~
 的区别，当变量 code 为普通字符串时，两者没有区别。当 code 比如为 
~~~
<h1>hello</h1>
~~~
 这种字符串时，<%= code %> 会原样输出 
~~~
<h1>hello</h1>
~~~

，而 <%- code %> 则会显示 H1 大的 hello 字符串


###EJS调用

1.  使用之前首先在页面上引用ejs.js，下载地址：[http://code.google.com/p/embeddedjavascript/downloads/list](http://code.google.com/p/embeddedjavascript/downloads/list)

2. 调用语法

~~~
var template = new EJS({url: '/mytemplate.ejs'}).render(data);

$('#id').html(template);
~~~


####EJS API参考

参考api地址：[http://code.google.com/p/embeddedjavascript/](http://code.google.com/p/embeddedjavascript/)

~~~
var template = new EJS({url: '/mytemplate.ejs'});

>参数是一个json：

- url{string}:从文件中加载模板
  
-  text{string}:直接使用模板内容

-  element{string or  element}：从元素的innerHTML 或value中获取模板

type{string}(可选):

 -  name{string}（可选） - 一个用于高速缓存的名称。此默认为元素的ID或URL。

 - cache{bool}（可选） - 默认为true。如果为true则启用缓存的模板，否则为false。
~~~

#####解析模板方法
1. render

~~~
 html = new EJS({url: '/template.ejs'}).render(data)
~~~

2. update(elemnt,url_or_data)

~~~
f = new EJS({url: '/mytemplate.ejs'}).update('my_element')

new EJS({url: '/mytemplate.ejs'}).update('my_element', '/data.json')

new EJS({url: '/mytemplate.ejs'}).update('my_element', {supplies: ['mop']})
~~~

如果参数为url，则会自动发送一个ajax请求

#####修改后缀方法
ejs.js 422行，有如下代码
~~~
EJS.config( {cache: true, type: '<', ext: '.html' } );
~~~
分别定义了默认的：缓存，标签符号，和后缀，自行修改即可


###bug

EJS在使用update方法的时候，通过传入的url获取到的json string无法转换成json，修改方法

把代码
~~~

var object = eval( "(" + request.responseText +")")

~~~
修改为
~~~

	var object = (new Function("","return " + request.responseText))();

~~~
或者
~~~
var object = eval( "(" + request.responseText +")")
~~~

###自定义版本
添加功能