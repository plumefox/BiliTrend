[![LICENSE](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/plumefox/BiliTrend/blob/master/LICENSE)

# BiliTrend
Use python spider to spider the bilibili ranking information

## 这是什么项目？

这是一个爬取bilibili排行榜（https://www.bilibili.com/ranking） 的项目，并将爬取完成的数据存入数据库。
同时该项目兼具了自动化代理爬取功能，代理来源为：https://www.xicidaili.com/nn/  均为中国大陆高匿代理。
同时项目也进行了简单的代理可行性验证，在代理爬取完成后会访问百度（www.baidu.com) ,以及在进行排行榜爬取前也会进行验证。

## 如何使用?
#### 1.请先完成数据库的配置
使用以下命令(请修改路径为sql文件路径)：
<pre><code>source [/path]/proxip.sql;
source [/path]/bilitrend.sql; 
</code></pre> 

#### 2.修改mySQLConnect.py:修改其中的数据库账号密码以及数据库名 

#### 3.(非必要)如有需要，运行proxyIP.py文件来获取代理ip
若需要使用代理ip,请查看spiderT.py文件中setHttpProxy方法

代理ip默认来源于数据库，如不需要，请查看spiderT.py文件中setHttpProxy方法，将其中的mysqlSource改为False 
注意:若开启该选项，并且数据库内无可用代理ip，则会自动停止运行 
若关闭了该选项，请手动设置代理ip

<pre><code>setHttpProxy参数{
  proxySwitch: 代理开关 默认为False
  mysqlSource: 代理ip来源，默认为True
}
</code></pre> 



#### 4.运行spiderT.py文件
运行之后会自动将爬取到的数据存入到数据库


## 简易示例：
<pre><code>newSpider = Spider()
newSpider.setHttpProxy(True)
newSpider.run()
</code></pre> 


## 开源协议：
[![LICENSE](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/plumefox/BiliTrend/blob/master/LICENSE)

## 支持
这是一个学生党的个人项目，如对您有帮助，请点击star，这是对我的鼓励  
如有问题，提交issue或者email联系我皆可。

