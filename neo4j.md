
作者
=====
~~~
author：左盐

mail:huabinglan@163.com
~~~

neo4j安装
======
###neo4j版本介绍
neo4j分为三个版本：社区版(community)，高级版(advanced)和企业版(enterprice)。

社区版是基础版本，不支持集群，它使用的是GPLv3协议，这意味着修改和使用其代码都需要开源，但是这是建立在软件分发的基础上，如果使用Neo4j作为服务提供，而不分发软件，则不需要开源。

高级版和企业版建立在社区版的基础上，但多出一些高级特性。高级版包括一些高级监控特性，而企业版则包括在线备份、高可用集群以及高级监控特性。要注意它们使用了AGPLv3协议，也就是说，除非获得商业授权，否则无论以何种方式修改或者使用Neo4j，都需要开源。

###neo4j的安装与启动

本文只介绍centos的安装方法，本文使用的为企业版

1，下载neo4j的安装包

~~~~
 wget http://dist.neo4j.org/neo4j-enterprise-1.8.M07-unix.tar.gz 
//http://dist.neo4j.org/neo4j-enterprise-2.0.3-unix.tar.gz
~~~~

2，解压到存放目录
   
~~~
 tar zxvf neo4j-enterprise-1.8.M07-unix.tar.gz 
~~~

3，进入解压目录里的conf文件夹

~~~
 cd neo4j-enterprise-1.8.M07/conf
~~~ 

4, 修改neo4j-server.properties配置文件，将org.neo4j.server.webserver.address=0.0.0.0注释字符去掉

5，启动neo4j的服务

~~~~
 cd ../bin

 ./neo4j start
~~~~

启动过之后可以通过 http://localhost:7474/webadmin/ 进入neo4j的控制台


node-neo4j
=======
##参考
API site: [http://coffeedoc.info/github/thingdom/node-neo4j/master/](http://coffeedoc.info/github/thingdom/node-neo4j/master/ "http://coffeedoc.info/github/thingdom/node-neo4j/master/")

node-neo4j github:[https://github.com/thingdom/node-neo4j](https://github.com/thingdom/node-neo4j "https://github.com/thingdom/node-neo4j")


##API备注
###Node
####save()

~~~
 
保存或更新node，返回同一个实例后保存

参数: callback (Function)

返回: Node
~~~


根据关系查询节点
~~~~
START n=node(1)

MATCH (n)--(x)

RETURN x

~~~~

根据id查询节点
~~~~
START n=node(1)

RETURN n

~~~~


~~~~
//删除6和节点6的所有关系
START n=node(6)
DELETE n
WITH n
MATCH (n)-[rel] -(other)
DELETE rel


//查询id=6的节点
START n=node(6)
return n

//通过friend关系查询所有结点
START n=node(6)
MATCH n - [r:friend] - b
return b

//删除两个点间的关系
START n=node(3)
MATCH (n)-[rel:friend] -(other)
WHERE ID(other) = 4
DELETE rel

//打印路径
START neo=node(3) 
MATCH path= neo-[r:friend*..4]->other
WHERE ALL(n in nodes(path) where 1=length(filter(m in nodes(path) : m=n))) 
RETURN  LENGTH(path) AS length, EXTRACT(p in NODES(path) : ID(p)), other ORDER BY length

//打印路径
START n = node(3)
MATCH path = n - [r:friend*..4] -> other
return EXTRACT(p in NODES(path):ID(p))
skip 1
limit 1



START n=node(0)

MATCh path = n - [r:friend*1..5] -> other

WHERE length(path) =1 

RETURN ID(nodes(path))


START neo=node(0) 
MATCH path= neo-[r:friend*2]- b - [r1:friend] -> other
where b.avatar<>'d',length(path)

RETURN NODES(path), length(path)

order by length(path)
 

START n = node(123), x=node(*)
MATCH p = shortestPath(n-[r:LIKES*..3]->x)
RETURN p;


START n=node(0)

MATCH path = n - [rel] ->b-[re]-> other

WHERE TYPE(rel) =~'f.*'  AND TYPE(re) =~'f.*'//D other.avatar = 'asd'

RETURN path,length(path) as len,type(rel),count(path)

order by len 


limit 10

~~~~


###数据变化表
| nodes | properties | rel | reltype
|-----|
| 2 |  4 | 0 | 0
| 2 |  4 | 1 | 1:friend
| 1 |  2 | 0 | 1:friend



0-1 1-2 2-5
0-5 5-6
0-1 1-2 2-7

1-8



0-1
0-5
0-5-6
0-1-8
0-1-2
0-1-5
0-1-2-7
0-1-2-5
0-1-5-6


START n = node(*)

//MATCH n-[rel:f1]->other

//set rel.pri='true'
//DELETE rel

//WITH

//CREATE n - [r:pf1]- b ->other

MATCH path = n-[r:f2]->b -[r1]-> other

where r1.pri = 'true'

return path,length(path)


15:48:25



START n=node(9)

MATCH path = n-[r]->other

WHERE r.pri <> 'false' OR r.pri IS NULL

return path

skip 0

limit 10
