## 技术栈：
SpringBoot、Mybatis-plus、Axios、html5、Vue2、CSS3、Element UI、flex布局、elasticserach<br/>
## 项目描述： 
本项目是springboot、mybatis - plus框架开发的一个面试题搜索查看网站，主要分为用户和管  理员两个模块。<br/>
用户注册登入成功后，即可选择自己需要的面试进行模糊查询。管理员登入成功后在主要负责试题的增删改查 ，用户账号密码的管理等。<br/>

**后端框架优化：**
使用Mybatis-Plus框架，mapper和service层接口，分别继承了封装好的BaseMapper类和IService类，而impl实现类层继承ServiceImpl类实现，省略了传统mapper、service接口、impl实现类方法代码编写，以及xml文件的编写，可以在controller层直接调用封装好的方法即可<br/>

**ChatGpt4.0:** 
除整理收集的试题外，其他试题可调用内置ChatGpt接口搜索<br/>

**数据操纵分类:**
账号、试题操作使用mysq数据库l，试题搜索使用elasticsearch搜索引擎<br/>

**资源拦截：** 
使用spring的拦截器定义一个LoginInterConfig配置类，实现WebMvcConfigurer接口，重写相关方法拦截和放行资源<br/>

**访问请求拦截：** 
使用servlet的拦截器，实现servlet的HandlerInterceptor接口，拦截处理用户和管理员相关的登入访问权限请求<br/>

**用户登入退出校验：**
使用session存储、定时清除用户的登入信息，进行登入退出校验<br/>

**加密保存账号信息：** 
采用AES算法+IO流，把用户密码加密保存到项目文件中<br/>

**面试题导出：** 
使用阿里巴巴的easy excel工具，以excel格式导出面试题<br/>

**安全认证：**
使用spring Security对管理员的登入进行安全验证，验证通过后才可登入管理员账号<br/>

**前端框架优化：**
使用element ui框架+flex布局快速构建页面整体框架，极大程度简化了CSS样式编写调试<br/>

**前后端分离：**
使用nginx服务器进行前后端分离开发，可以单独启动前端页面，访问静态资源<br/>

**部署：**
阿里云服务器、Xshell、宝塔面板<br/>

## 登入页面
![登入页面](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/login.png)
<p>如果有账号，输入正确的账号密码即可登入</p>

## 注册页面
![注册页面](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/register.png)
<p>按要求输入真确的账号密码，即可注册</p>

### 账号已经注册
![](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/Reregister.png)
<p>首先会发送查询请求，查询账号是否注册，如已注册提示“账号已经注册”</p>

## 试题搜索页面
![试题搜索页面](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/main.png)
<p>页面左边有试题导航菜单，右边可以自己迷糊查询，除整理的试题外，也可以直接调用ChatGpt接口查询其他试题</p>

## elasticserach倒排索引库
![试题索引库](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/es.png)
![插入代码](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/esadd.png)

## 管理员页面

![管理员页面](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/admin.png)
<p>管理员可以修改自己的密码</p>

## 编辑用户

![编辑用户](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/edituser.png)
<p>管理员可以修改用户的密码，也可以添加一个新的账户</p>

## 编辑试题

![编辑试题](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/edititem.png)
<p>管理员可以在此添加修改试题信息</p>

## 调用ChatGpt接口

![调用ChatGpt接口](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/ChatGPT.png)
<p>查不到想要的试题信息时，点击其他问题，可访问ChatGpt，自行搜索</p>

## 把试题导出到excel
![试题导出](https://github.com/YyangZhiHeng/itembankshop/blob/main/picture/question.png)
~~~ String path = "C:\\Users\\Administrator\\Downloads\\questions.xls";
        List<Bank> list = itBankService.list();
        ExcelWriter excelWriter = EasyExcel.write(path, Bank.class).build();
        WriteSheet sheet = EasyExcel.writerSheet("test").build();
        excelWriter.write(list,sheet);
        excelWriter.finish();~~~
<p>需要试题可以把试题导出到本地文件：C:\Users\Administrator\Downloads目录下</p>
