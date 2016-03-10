

nodejs forever使用帮助
===
####启动命令

```javascript

NODE_ENV=production forever start -l /data/host/renmai/logs/forever.log -o /data/host/renmai/logs/out.log -e /data/host/renmai/logs/err.log  app.js


```

####通过下面的命令，可以一直跟着log显示。

````javascript
tail -f xx.log

````

### 常用命令

列出所有forever进程

```javascript
forever list

```

停止某个进程


```javascript
forever stop pid

```