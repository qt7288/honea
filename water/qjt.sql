-- 注释：判断是否存在qz，如果有就删除重新创建
SET NAMES UTF8;
DROP DATABASE IF EXISTS qz;
CREATE DATABASE qz CHARSET=UTF8;
-- 注释：编码格式utf8
USE qz;
-- 注释：使用qz库
-- 用户详细信息
CREATE TABLE qz_u_all(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(24),
  -- 用户名
  upwd VARCHAR(32),
  -- 用户密码
  email VARCHAR(64),
  -- 用户注册邮箱
  gender INT,
  -- 用户注册性别
  ctime VARCHAR(100)                 
  -- 用户注册时间
);
-- 插入2条测试数据
INSERT INTO qz_u_all VALUES(null,"匿名",md5("k123"),"2@qq.com",1,"努力总会有回报");
INSERT INTO qz_u_all VALUES(null,"yyy",md5("k123"),"1@qq.com",0,"努力总会有回报");
-- 用户头像信息表
CREATE TABLE qz_u_all_img(
  -- 根据ID模拟传值
  id INT PRIMARY KEY AUTO_INCREMENT,
  timg VARCHAR(168)
);
-- 插入系统设置头像
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/01.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/02.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/03.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/04.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/05.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/06.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/07.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/08.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/09.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/10.jpg");
INSERT INTO qz_u_all_img VALUES(null,"img/txiang/11.jpg");
--主体图片
CREATE TABLE qz_index(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  mimg VARCHAR(128),
  -- 首页头栏的背景图
  wximg VARCHAR(128)
-- 微信二维码图片
);
-- 插入数据
INSERT INTO qz_index VALUES(null,"img/wx/03.jpg","img/wx/01.jpg");
--头栏
CREATE TABLE qz_bimg(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  bimg VARCHAR(128)
);
INSERT INTO qz_bimg VALUES(null,"img/wx/03.jpg");
-- 主体文本资源
CREATE TABLE qz_text(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  sltext VARCHAR(128),
   --  #section-left-text文本
  srtext VARCHAR(128),
   --  #section-right-text文本
  ftext VARCHAR(128),      
  --  #footer-text文本
  time VARCHAR(16),
  -- card时间
  cimg VARCHAR(128)
  -- card图库
);
--文本插入数据
INSERT INTO qz_text VALUES(null,"前端","javascript异步中的回调","从今天开始研究一下javascript的异步相关内容，感兴趣的请关注","2019/3/6","img/md/card/01.jpg");
INSERT INTO qz_text VALUES(null,"前端","javascript异步之Promise.resolve()..","我们上次讨论了Promise.all()、Promise.race()、Promise.finally() 今天我们继续讨论Promise的两个常用API 可以这么说，resolve和reject撑起了Promise的半…","2019/3/6","img/md/card/02.jpg");
INSERT INTO qz_text VALUES(null,"前端","javascript异步之Promise then和catch","Promise常用API第三波then和catch","2019/3/6","img/md/card/03.jpg");
INSERT INTO qz_text VALUES(null,"前端"," javascript异步之async（一）","说起javascript异步，我想你一定会想起async，甚至要排在promise之前，从今天起我们来聊一聊async","2019/3/6","img/md/card/04.jpg");
INSERT INTO qz_text VALUES(null,"Javascript"," javascript作用域之块级作用域","本文主要介绍了javascript作用域中的块级作用域，以及通过函数作用域来模拟实现块级作用域，let和var的区别","2019/3/6","img/md/card/05.jpg");
INSERT INTO qz_text VALUES(null,"Javascript","谈一谈javascript中的this","从今天开始讨论javascript中的this，感兴趣的同学请保持关注，一起讨论交流","2019/3/6","img/md/card/06.jpg");
INSERT INTO qz_text VALUES(null,"Javascript","this在vue和小程序中的使用","javascript作用域系列文章第五篇，感兴趣的同学请保持关注 之前用了两篇文章介绍了this的基本使用方法， 今天我们看看this在vue和小程序中的使用情况 vue中的this使用 目录 vue中的this使用匿名…","2019/3/6","img/md/card/07.jpg");
INSERT INTO qz_text VALUES(null,"前端","（转载）【解读】我如何零基础转行成为一","阿里巴巴/蚂蚁金服——黄磊 https://lambda.academy/how-i-became-a-confident-frontend-developer/ Frontend Master 前端大师、视频平台（订阅…","2019/3/6","img/md/card/08.jpg");
INSERT INTO qz_text VALUES(null,"Javascript"," Javascript编码规范","命名规范 目录 命名规范局部变量命名规范函数命名引用 References对所有的引用使用 const ；不要使用 var。如果你一定需要可变动的引用，使用 let 代替 var 。对象Objects使用字面量语法创建对…","✪2019/3/6","img/md/card/09.jpg");
INSERT INTO qz_text VALUES(null,"Javascript"," 循环中的异步&&循环中的闭包","在这之前先要了解一下 for循环中let 和var的区别 目录 for循环中let 和var的区别循环中的异步setTimeout(func,time)函数运行机制一个需求，一个数组array[1,2,3,4,5],循环…","✪2019/3/6","img/md/card/10.jpg");
INSERT INTO qz_text VALUES(null,"Javascript","  javascript面向对象之“多态”","ES6之前，javascript本质上不能算是一门面向对象的编程语言，因为它对于封装、继承、多态这些面向对象语言的特点并没有在语言层面上提供原生的支持。 但是，它引入了原型(prototype)的概念，可以让我们以另一种…","2019/2/28","img/md/card/11.jpg");
INSERT INTO qz_text VALUES(null,"前端"," javascript异步之async（一）","说起javascript异步，我想你一定会想起async，甚至要排在promise之前，从今天起我们来聊一聊async","2019/3/6","img/md/card/04.jpg");
INSERT INTO qz_text VALUES(null,"前端","（转载）【解读】我如何零基础转行成为一","阿里巴巴/蚂蚁金服——黄磊 https://lambda.academy/how-i-became-a-confident-frontend-developer/ Frontend Master 前端大师、视频平台（订阅…","2019/3/6","img/md/card/08.jpg");
INSERT INTO qz_text VALUES(null,"前端","javascript异步之Promise.resolve()..","我们上次讨论了Promise.all()、Promise.race()、Promise.finally() 今天我们继续讨论Promise的两个常用API 可以这么说，resolve和reject撑起了Promise的半…","2019/3/6","img/md/card/02.jpg");
INSERT INTO qz_text VALUES(null,"Javascript"," 循环中的异步&&循环中的闭包","在这之前先要了解一下 for循环中let 和var的区别 目录 for循环中let 和var的区别循环中的异步setTimeout(func,time)函数运行机制一个需求，一个数组array[1,2,3,4,5],循环…","✪2019/3/6","img/md/card/10.jpg");
INSERT INTO qz_text VALUES(null,"前端","javascript异步中的回调","从今天开始研究一下javascript的异步相关内容，感兴趣的请关注","2019/3/6","img/md/card/01.jpg");
-- 分页内容
CREATE TABLE qz_text_fpage(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  sltext VARCHAR(50),
          --  #section-left-text文本
  srtext VARCHAR(2000),
          -- 分页主体内容text
  fimg VARCHAR(128)
          -- 分页主体头图片
);

INSERT INTO qz_text_fpage VALUES(null,"Javascript实战","var 是函数级作用域或者全局作用域，let是块级作用域看一个例子,et的作用局的块级作用局，index的作用域在for循环内部，即每次循环的index的作用域就是本次循环，下一次循环重新定义变量index；所以index每次循环的输出都不同setTimeout(func,time)函数运行机制
setTimeout(func,time)是在time（毫秒单位）时间后执行func函数。浏览器引擎按顺序执行程序，遇到setTimeout会将func函数放到执行队列中，等到主程序执行完毕之后，才开始从执行队列（队列中可能有多个待执行的func函数）中按照time延时时间的先后顺序取出来func并执行。即使time=0,也会等主程序运行完之后，才会执行。<br>
方式二，引入全局变量代码执行顺序是，先同步执行for循环，再执行异步队列，在for循环执行完毕后，异步队列开始执行之前，index经过for循环的处理，变成了5。
所以我们引入一个全局变量j，使j在for循环执行完毕后，异步队列开始执行之前，依然是0，在异步执行时进行累加、方式三 for循环配合setTimeout（常规思路，不赘述，面试必备技能、方式四，通过闭包实现<br>
for循环本身是同步执行的，当在for循环中遇到了异步逻辑，异步就会进入异步队列，当for循环执行结束后，才会执行异步队列
当异步函数依赖于for循环中的索引时（一定是存在依赖关系的，不然不会再循环中调动异步函数）要考虑作用域的问题，
在ES6中使用let是最佳的选择，当使用var时，可以考虑再引入一个索引来替代for循环中的索引，新的索引逻辑要在异步中处理也可以使用闭包，模拟实现let
在实际开发过程中，循环调用异步函数，比demo要复杂，可能还会出现if和else判断等逻辑，具体的我们下次再续","img/fpage/01.jpg");
INSERT INTO qz_text_fpage VALUES(null,"Javascript实战","var 是函数级作用域或者全局作用域，let是块级作用域看一个例子,et的作用局的块级作用局，index的作用域在for循环内部，即每次循环的index的作用域就是本次循环，下一次循环重新定义变量index；所以index每次循环的输出都不同setTimeout(func,time)函数运行机制
setTimeout(func,time)是在time（毫秒单位）时间后执行func函数。浏览器引擎按顺序执行程序，遇到setTimeout会将func函数放到执行队列中，等到主程序执行完毕之后，才开始从执行队列（队列中可能有多个待执行的func函数）中按照time延时时间的先后顺序取出来func并执行。即使time=0,也会等主程序运行完之后，才会执行。<br>
方式二，引入全局变量代码执行顺序是，先同步执行for循环，再执行异步队列，在for循环执行完毕后，异步队列开始执行之前，index经过for循环的处理，变成了5。
所以我们引入一个全局变量j，使j在for循环执行完毕后，异步队列开始执行之前，依然是0，在异步执行时进行累加、方式三 for循环配合setTimeout（常规思路，不赘述，面试必备技能、方式四，通过闭包实现<br>
for循环本身是同步执行的，当在for循环中遇到了异步逻辑，异步就会进入异步队列，当for循环执行结束后，才会执行异步队列
当异步函数依赖于for循环中的索引时（一定是存在依赖关系的，不然不会再循环中调动异步函数）要考虑作用域的问题，
在ES6中使用let是最佳的选择，当使用var时，可以考虑再引入一个索引来替代for循环中的索引，新的索引逻辑要在异步中处理也可以使用闭包，模拟实现let
在实际开发过程中，循环调用异步函数，比demo要复杂，可能还会出现if和else判断等逻辑，具体的我们下次再续","img/fpage/01.jpg");
INSERT INTO qz_text_fpage VALUES(null,"Javascript实战","var 是函数级作用域或者全局作用域，let是块级作用域看一个例子,et的作用局的块级作用局，index的作用域在for循环内部，即每次循环的index的作用域就是本次循环，下一次循环重新定义变量index；所以index每次循环的输出都不同setTimeout(func,time)函数运行机制
setTimeout(func,time)是在time（毫秒单位）时间后执行func函数。浏览器引擎按顺序执行程序，遇到setTimeout会将func函数放到执行队列中，等到主程序执行完毕之后，才开始从执行队列（队列中可能有多个待执行的func函数）中按照time延时时间的先后顺序取出来func并执行。即使time=0,也会等主程序运行完之后，才会执行。<br>
方式二，引入全局变量代码执行顺序是，先同步执行for循环，再执行异步队列，在for循环执行完毕后，异步队列开始执行之前，index经过for循环的处理，变成了5。
所以我们引入一个全局变量j，使j在for循环执行完毕后，异步队列开始执行之前，依然是0，在异步执行时进行累加、方式三 for循环配合setTimeout（常规思路，不赘述，面试必备技能、方式四，通过闭包实现<br>
for循环本身是同步执行的，当在for循环中遇到了异步逻辑，异步就会进入异步队列，当for循环执行结束后，才会执行异步队列
当异步函数依赖于for循环中的索引时（一定是存在依赖关系的，不然不会再循环中调动异步函数）要考虑作用域的问题，
在ES6中使用let是最佳的选择，当使用var时，可以考虑再引入一个索引来替代for循环中的索引，新的索引逻辑要在异步中处理也可以使用闭包，模拟实现let
在实际开发过程中，循环调用异步函数，比demo要复杂，可能还会出现if和else判断等逻辑，具体的我们下次再续","img/fpage/01.jpg");
INSERT INTO qz_text_fpage VALUES(null,"Javascript实战","var 是函数级作用域或者全局作用域，let是块级作用域看一个例子,et的作用局的块级作用局，index的作用域在for循环内部，即每次循环的index的作用域就是本次循环，下一次循环重新定义变量index；所以index每次循环的输出都不同setTimeout(func,time)函数运行机制
setTimeout(func,time)是在time（毫秒单位）时间后执行func函数。浏览器引擎按顺序执行程序，遇到setTimeout会将func函数放到执行队列中，等到主程序执行完毕之后，才开始从执行队列（队列中可能有多个待执行的func函数）中按照time延时时间的先后顺序取出来func并执行。即使time=0,也会等主程序运行完之后，才会执行。<br>
方式二，引入全局变量代码执行顺序是，先同步执行for循环，再执行异步队列，在for循环执行完毕后，异步队列开始执行之前，index经过for循环的处理，变成了5。
所以我们引入一个全局变量j，使j在for循环执行完毕后，异步队列开始执行之前，依然是0，在异步执行时进行累加、方式三 for循环配合setTimeout（常规思路，不赘述，面试必备技能、方式四，通过闭包实现<br>
for循环本身是同步执行的，当在for循环中遇到了异步逻辑，异步就会进入异步队列，当for循环执行结束后，才会执行异步队列
当异步函数依赖于for循环中的索引时（一定是存在依赖关系的，不然不会再循环中调动异步函数）要考虑作用域的问题，
在ES6中使用let是最佳的选择，当使用var时，可以考虑再引入一个索引来替代for循环中的索引，新的索引逻辑要在异步中处理也可以使用闭包，模拟实现let
在实际开发过程中，循环调用异步函数，比demo要复杂，可能还会出现if和else判断等逻辑，具体的我们下次再续","img/fpage/01.jpg");
INSERT INTO qz_text_fpage VALUES(null,"Javascript实战","var 是函数级作用域或者全局作用域，let是块级作用域看一个例子,et的作用局的块级作用局，index的作用域在for循环内部，即每次循环的index的作用域就是本次循环，下一次循环重新定义变量index；所以index每次循环的输出都不同setTimeout(func,time)函数运行机制
setTimeout(func,time)是在time（毫秒单位）时间后执行func函数。浏览器引擎按顺序执行程序，遇到setTimeout会将func函数放到执行队列中，等到主程序执行完毕之后，才开始从执行队列（队列中可能有多个待执行的func函数）中按照time延时时间的先后顺序取出来func并执行。即使time=0,也会等主程序运行完之后，才会执行。<br>
方式二，引入全局变量代码执行顺序是，先同步执行for循环，再执行异步队列，在for循环执行完毕后，异步队列开始执行之前，index经过for循环的处理，变成了5。
所以我们引入一个全局变量j，使j在for循环执行完毕后，异步队列开始执行之前，依然是0，在异步执行时进行累加、方式三 for循环配合setTimeout（常规思路，不赘述，面试必备技能、方式四，通过闭包实现<br>
for循环本身是同步执行的，当在for循环中遇到了异步逻辑，异步就会进入异步队列，当for循环执行结束后，才会执行异步队列
当异步函数依赖于for循环中的索引时（一定是存在依赖关系的，不然不会再循环中调动异步函数）要考虑作用域的问题，
在ES6中使用let是最佳的选择，当使用var时，可以考虑再引入一个索引来替代for循环中的索引，新的索引逻辑要在异步中处理也可以使用闭包，模拟实现let
在实际开发过程中，循环调用异步函数，比demo要复杂，可能还会出现if和else判断等逻辑，具体的我们下次再续","img/fpage/01.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 4 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 5 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 6 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 7 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 8 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 9 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 10 test file name","
<h2>The third test file test content<h2>
","img/fpage/0.3.jpg");
INSERT INTO qz_text_fpage VALUES(null,"The 11 test file name","
<h2>The third test file test content<h2>","img/fpage/0.3.jpg");
-- 
-- 各面板头栏logo字体字样
CREATE TABLE qz_iht(
  hid INT PRIMARY KEY AUTO_INCREMENT, 
  btext VARCHAR(128),
  mtext VARCHAR(16)             
    -- #logo字体
);
-- 插入数据
INSERT INTO qz_iht VALUES(null,"If you sail against the current, you will retreat.","蜂窝");
INSERT INTO qz_iht VALUES(null,"Memories are sweet, accompanied by you `","蜂窝留言板");
INSERT INTO qz_iht VALUES(null,"Work harder and be happier with pioneers","与先锋者为伍更努力更快乐");
-- 导航标签
CREATE TABLE qz_bq(
  bqid INT PRIMARY KEY AUTO_INCREMENT, 
  smtext VARCHAR(10)               
  --  #标签字体 
);
INSERT INTO qz_bq VALUES(null,"主页");
INSERT INTO qz_bq VALUES(null,"简介");
INSERT INTO qz_bq VALUES(null,"留言");
INSERT INTO qz_bq VALUES(null,"打赏");
INSERT INTO qz_bq VALUES(null,"留言");
INSERT INTO qz_bq VALUES(null,"友链");
INSERT INTO qz_bq VALUES(null,"注册");
INSERT INTO qz_bq VALUES(null,"css");
INSERT INTO qz_bq VALUES(null,"a");
INSERT INTO qz_bq VALUES(null,"b");
INSERT INTO qz_bq VALUES(null,"c");
INSERT INTO qz_bq VALUES(null,"d");
INSERT INTO qz_bq VALUES(null,"e");
INSERT INTO qz_bq VALUES(null,"f");
INSERT INTO qz_bq VALUES(null,"g");
-- 主页面section-button 内容
-- button标签遍历插入
CREATE TABLE qz_b_text(
  btid INT PRIMARY KEY AUTO_INCREMENT, 
  btext VARCHAR(128),
  color VARCHAR(36)      
  --  #button-text文本
);
-- 插入数据
-- 颜色已选择js插入
INSERT INTO qz_b_text VALUES(null,"html","rgba(125,255,125)");
INSERT INTO qz_b_text VALUES(null,"java","rgba(125,125,255)");
INSERT INTO qz_b_text VALUES(null,"javascript","rgba(5,125,125)");
INSERT INTO qz_b_text VALUES(null,"python","rgba(125,205,125)");
INSERT INTO qz_b_text VALUES(null,"css","rgba(125,125,205)");
INSERT INTO qz_b_text VALUES(null,"php","rgba(125,100,125)");
INSERT INTO qz_b_text VALUES(null,"java","rgba(125,125,5)");
INSERT INTO qz_b_text VALUES(null,"c++","rgba(125,15,125)");
INSERT INTO qz_b_text VALUES(null,"Vue","rgba(125,1,125)");
INSERT INTO qz_b_text VALUES(null,"前端","rgba(125,1,125)");
INSERT INTO qz_b_text VALUES(null,"Vue","rgba(125,1,125)");
INSERT INTO qz_b_text VALUES(null,"Vue","rgba(125,1,125)");
-- 插入数据时留言板
-- 向数据库添加留言
CREATE TABLE qz_lyan(
  lytid INT PRIMARY KEY AUTO_INCREMENT, 
  lyname VARCHAR(24),
  txta VARCHAR(128),
  now VARCHAR(24)
);
-- 插入数据
INSERT INTO qz_lyan VALUES(null,"匿名","我是一楼","2019-3-11 17:55:11");
-- root管理员进入界面
CREATE TABLE qz_foot(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  ftime VARCHAR(20),
  ftext varchar(60),
  furl varchar(60),
  froot varchar(10)
);
INSERT INTO qz_foot VALUES(null,"start:2019年3月4日19:32:04","2019&nbsp;&nbsp;蜂窝 .&nbsp;&nbsp","http://172.242.3.181:7777/02_list.html","管理员");
--歌曲功能
CREATE TABLE qz_sr(
  srid INT PRIMARY KEY AUTO_INCREMENT,
  loginU varchar(60),
  regU VARCHAR(60),
  music VARCHAR(60)
);
-- 插入数据，跳转接口和mp3文件
INSERT INTO qz_sr VALUES(null,"http://172.242.3.181:8080/#/login","http://172.242.3.181:8080/#/reg","img/music.mp3");

CREATE TABLE qz_mine(
  minid INT PRIMARY KEY AUTO_INCREMENT,
  imgOne VARCHAR(128),
  imgTwo VARCHAR(128),
  imgThree VARCHAR(128),
  imgFour VARCHAR(128),
  imgFire VARCHAR(128),
  leftOne VARCHAR(600),
  rightOne VARCHAR(600),
  rightTwo VARCHAR(1000)
);
INSERT INTO qz_mine VALUES(null,"images/01.jpg","images/02.jpg","images/03.jpg","images/04.jpg","images/05.jpg","                                <h2>目标</h2>
                                <p>与先锋者为伍，探索科技开发</p>
                                <p>Exploring scientific and technological development with pioneers</p>
                                <hr>
                                <p>蜜蜂内部机构精练，分工明确，协作高效，文明有序，非常具有团队精神，一旦发现花朵，即呼朋引伴，播粉采蜜；而一旦个体遭受攻击，蜂群相拥而至，上下齐心，用足用够集体的智慧和力量，战胜对方。</p>
                                <p>Honeybee internal structure is concise, clear division of labor, efficient collaboration, civilized and orderly, very team spirit, once found flowers, that is, call friends, pollination, honey; and once an individual is attacked, bees flock together, up and down, with enough collective wisdom and strength to defeat each other.</p><hr>","<h2>蜜蜂代表的意义</h2>
                                <p> 一、勤劳精神：蜜蜂迎着朝霞出，披着余晖归，既敬业又精业，博采百花之“糖”，风雨无阻。</p>
                                <hr>
                                <p>二、团队精神：蜜蜂内部机构精练，分工明确，协作高效，文明有序，非常具有团队精神，一旦发现花朵，即呼朋引伴，播粉采蜜；而一旦个体遭受攻击，蜂群相拥而至，上下齐心，用足用够集体的智慧和力量，战胜对方。</p>
                                <hr>
                                <p>三、奉献精神：蜜蜂餐风饮露，采花酿蜜，以苦为乐，乐于奉献，不计个人得失，哪怕在维权上，攻击对方拨出蜂针，面对自己行将结束生命也毫不犹豫。</p><hr>
                                <p>四、求实精神：蜜蜂与花为伴，与花为善，不厌其烦，精益求精，认真采撷每一朵花，精选能酿造好蜜的新鲜花粉，甘作月下老，使之花开满树，青果满枝，展现了良好的求实精神。</p><hr>
                                <p>五、自律精神：蜜蜂洁身自好，时刻保持警惕，蜂箱里一旦有不洁之物，总是将它弃之箱外。</p>
                                <hr>","                                <br />
                                <h2>The Significance of Bee Representation</h2>
                                <p>
                                1. Diligence: Bees come out in the sunset and return in the afterglow. They are both devoted and professional, and they collect all kinds of `sugar` from flowers without hindrance.
                                </p><hr><p>
                                2. Team Spirit: Bees have excellent internal organization, clear division of labor, efficient collaboration, civilized and orderly, very team spirit. Once they find flowers, they call friends and attract friends, sow pollen and gather honey. Once individuals are attacked, bees flock to each other and work together to defeat each other with sufficient collective wisdom and strength.</p><hr>
                                <p>
                                3. Dedication Spirit: Bees eat and drink dew, gather flowers and make honey, take pleasure in bitterness, be willing to dedicate, regardless of personal gains and losses, even in the defense of rights, attack each other to set aside bee needles, face their own will end their lives without hesitation.
                                </p><hr><p>
                                      4.Fourth, the spirit of seeking truth: bees and flowers as companions, and flowers as good, tireless, excellence, earnestly picking each flower, select fresh pollen that can brew good honey, willing to grow old under the moon, so that the flowers blossom full of trees, fruits full of branches, showing a good spirit of seeking truth.
                                </p><hr>
                                <p>
                                5.Fifth, self-discipline spirit: bees keep clean and self-conscious, always vigilant, once there is something unclean in the hive, always abandon it outside the hive.
                                </p><hr>   ");
                                -- 测试友链
CREATE TABLE qz_Fchain(
  Fid INT PRIMARY KEY AUTO_INCREMENT,
  Fname VARCHAR(32),
  Fhref VARCHAR(168)
);
INSERT INTO qz_Fchain VALUES(null,"Rain","http://taotao2019.applinzi.com/fchain/rain.html");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");
INSERT INTO qz_Fchain VALUES(null,"Friend chain test","javascript:0;");

-- 用户建议表
CREATE TABLE qz_fpage_say(
  qzFid INT PRIMARY KEY AUTO_INCREMENT,
  fpageId INT,
  uname VARCHAR(24),
  fpageSay VARCHAR(120) 
)
