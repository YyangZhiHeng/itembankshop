/*
SQLyog Enterprise v12.2.6 (64 bit)
MySQL - 5.7.36-log : Database - study
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`study` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `study`;

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) COLLATE utf8_bin NOT NULL,
  `code` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `answer` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bank` */

insert  into `bank`(`id`,`content`,`code`,`name`,`answer`) values 
(1,'什么IOC',1,'spring面试题','把对象的控制权交给spring容器，我们自己不在操作'),
(2,'什么是AOP',1,'spring面试题','面相切面编程，把代码块中重复使用的模块抽取出来，打包，再需要要是再调用即可，像一般的日志、事务等'),
(3,'beand的生命周期',1,'spring面试题','1.实例化、2.属性设置、3.初始化、4.销毁'),
(4,'spring都用到了哪些设计模式',1,'spring面试题','1.工厂模式、2.单例模式、3.代理模式、4.模版模式、5.观察者模式、6.适配器模式'),
(5,'springmvc启动流程',1,'spring面试题','1.用户发送请求到前段控制器、2.前段控制器拦截请求后，调用处理器映射器、3.处理器映射器根据请求URL找到具体的处理器，生成处理器对象以及拦截器对象，返回给前段控制器、4.前段控制器通过返回的信息选择合适的处理器适配器、5.处理器适配器调用处理器，也就是controller类、6.controller层执行完毕后，返回一个ModeAndView对象、7.处理器适配器会把对象返回给前段控制器、前段控制器会调用合适的视图解析器、9.视图解析器解析完成后，会返回一个具体的view给前端控制器、10前端控制器对view视图就行渲染，填充数据、11.把渲染结果返回给用户客户端浏览器'),
(6,'springmvc常用的注解',1,'spring面试题','@RequestBody、@RequestParam、@PathVaribale、@Controller、@RequestMapping'),
(7,'什么是spring',1,'spring面试题','一个分层的一站式轻量级开源框架，以IOC和AOP为内核，java企业级框架'),
(8,'spring的事务管理',1,'spring面试题','test'),
(9,'SpringBoot自动配置',2,'springboot面试题','@EnableAutoConfiguration (开启自动配置) 该注解引入了AutoConfigurationImportSelector，该类中\n的方法会扫描所有存在META-INF/spring.factories的jar包。'),
(10,'SpringBoot启动类注解?它是由哪些注解组成？',2,'springboot面试题','@SpringBootConfiguration:组合了 @Configuration 注解，实现配置文件的功能。\n@EnableAutoConfiguration:打开自动配置的功能，也可以关闭某个自动配置的选项。\n@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })\n@ComponentScan:Spring组件扫描'),
(11,'SpringBoot需要独立的容器运行？',2,'springboot面试题','不需要，内置了 Tomcat/Jetty。'),
(12,'SpringBoot如何兼容Spring项目?',2,'springboot面试题','在启动类加: \n@ImportResource(locations = {\"classpath:spring.xml\"})'),
(13,'SpringBoot生命周期',2,'springboot面试题','1、初始化环境变量\n2、初始化环境变量完成\n3、应用启动\n4、应用已启动完成\n5、应用刷新\n6、应用停止\n7、应用关闭'),
(14,'SpringBoot三大核心注解',2,'springboot面试题','Springboot三大核心注解是：Configuration，EnableAuto，ComponentScan'),
(15,'针对请求访问的几个组合注解？',2,'springboot面试题','@PatchMapping\n@PostMapping\n@GetMapping\n@PutMapping\n@DeleteMapping'),
(16,'Spring Boot 中如何解决跨域问题 ?',2,'springboot面试题','跨域可以在前端通过 JSONP 来解决，但是 JSONP 只可以发送 GET 请求，无法发送其他类型的请求，在 RESTful 风格的应用中，就显得非常鸡肋，因此我们推荐在后端通过 （CORS，Crossorigin resource sharing） 来解决跨域问题。这种解决方案并非 Spring Boot 特有的，在传统的SSM 框架中，就可以通过 CORS 来解决跨域问题，只不过之前我们是在 XML 文件中配置 CORS ，现在可以通过实现WebMvcConfigurer接口然后重写addCorsMappings方法解决跨域问题。'),
(17,'springCloud的组件有哪些？',3,'微服务面试题','Eureka：注册中心，服务注册和发现\nRibbon：负载均衡，实现服务调用的负载均衡\nHystrix：熔断器\nFeign：远程调用\nZuul：网关\nSpring Cloud Config：配置中心'),
(18,'nacos服务注册',3,'微服务面试题','各服务通过nacos client向注册中心发送注册请求，发送的注册请求数据放在一个阻塞队列中（set集合）。客户端即刻返回注册成功 Nacos server通过一个异步任务去阻塞队列中进行消费，然后去写进注册表，最终完成注册。'),
(19,'nacos心跳机制',3,'微服务面试题','服务端拿到Instance的set集合后，遍历判断\n使用（当前时间-最后更新时间>设置的健康超时时间（默认15秒）），如果超过了15秒，则将状态改为 不健康。\n里面还有一个遍历判断：\n使用（当前时间-最后更新时间>设置的健康超时时间（默认30秒）），如果超过了30秒，则认为服务挂掉了，则从注册表中将该服务剔除'),
(20,'gateway介绍',3,'微服务面试题','Spring Cloud Gateway是Spring Cloud官方推出的第二代网关框架，取代Zuul网关。网关作为流量的，在微服务系统中有着非常作用，网关常见的功能有路由转发、权限校验、限流控制等作用。'),
(21,'网关的作用是什么？',3,'微服务面试题','统一管理微服务请求，权限控制、负载均衡、路由转发、监控、安全控制黑名单和白名单等'),
(22,'1.负载平衡的意义什么？',3,'微服务面试题','Ribbon是Netflix发布的开源项目，主要功能是提供客户端的软件负载均衡算法\nRibbon客户端组件提供一系列完善的配置项，如连接超时，重试等。简单的说，就是在配置文件\n中列出后面所有的机器，Ribbon会自动的帮助你基于某种规则（如简单轮询，随即连接等）去连\n接这些机器。我们也很容易使用Ribbon实现自定义的负载均衡算法。（有点类似Nginx）'),
(23,'4.Ribbon底层实现原理？',3,'微服务面试题','答：Ribbon使用discoveryClient从注册中心读取目标服务信息，对同一接口请求进行计数，使用%取余算法获取目标服务集群索引，返回获取到的目标服务信息。'),
(24,'什么是Feign？',3,'微服务面试题','Feign 是一个声明web服务客户端，这使得编写web服务客户端更容易他将我们需要调用的服务方法定义成抽象方法保存在本地就可以了，不需要自己构建Http请求了，直接调用接口就行了，不过要注意，调用方法要和本地抽象方法的签名完全一致。'),
(25,'介绍一下双亲委派模型,它的好处是什么?',4,'JVM面试题','类加载器⾃顶向下分为：\n1. Bootstrap ClassLoader启动类加载器：默认会去加载JAVA_HOME/lib⽬录下的jar\n2. Extention ClassLoader扩展类加载器：默认去加载JAVA_HOME/lib/ext⽬录下的jar\n3. Application ClassLoader应⽤程序类加载器：⽐如我们的web应⽤，会加载web程序中ClassPath\n下的类\n4. User ClassLoader⽤户⾃定义类加载器：由⽤户⾃⼰定义'),
(26,'JVM生命周期',4,'JVM面试题','启动。启动一个Java程序时，一个JVM实例就产生了，任何一个拥有public static void\nmain(String[] args)函数的class都可以作为JVM实例运行的起点\n运行。main()作为该程序初始线程的起点，任何其他线程均由该线程启动。JVM内部有两种线程：守护线程和非守护线程，main()属于非守护线程，守护线程通常由JVM自己使用，java程序也可以表明自己创建的线程是守护线程\n消亡。当程序中的所有非守护线程都终止时，JVM才退出；若安全管理器允许，程序也可以使用Runtime类或者System.exit()来退出'),
(27,'调优命令有哪些？',4,'JVM面试题','Sun JDK监控和故障处理命令有jps jstat jmap jhat jstack jinfo\njps，JVM Process Status Tool,显示指定系统内所有的HotSpot虚拟机进程。\njstat，JVM statistics Monitoring是用于监视虚拟机运行时状态信息的命令，它可以显示出虚拟\n机进程中的类装载、内存、垃圾收集、JIT编译等运行数据。\njmap，JVM Memory Map命令用于生成heap dump文件\njhat，JVM Heap Analysis Tool命令是与jmap搭配使用，用来分析jmap生成的dump，jhat内\n置了一个微型的HTTP/HTML服务器，生成dump的分析结果后，可以在浏览器中查看\njstack，用于生成java虚拟机当前时刻的线程快照。\njinfo，JVM Configuration info 这个命令作用是实时查看和调整虚拟机运行参数。'),
(28,'常用的 jvm 调优的参数都有哪些？',4,'JVM面试题','-Xms2g：初始化推大小为 2g；\n\n-Xmx2g：堆最大内存为 2g；\n\n-XX:NewRatio=4：设置年轻的和老年代的内存比例为 1:4；\n\n-XX:SurvivorRatio=8：设置新生代 Eden 和 Survivor 比例为 8:2；\n\n–XX:+UseParNewGC：指定使用 ParNew + Serial Old 垃圾回收器组合；\n\n-XX:+UseParallelOldGC：指定使用 ParNew + ParNew Old 垃圾回收器组合；\n\n-XX:+UseConcMarkSweepGC：指定使用 CMS + Serial Old 垃圾回收器组合；\n\n-XX:+PrintGC：开启打印 gc 信息；\n\n-XX:+PrintGCDetails：打印 gc 详细信息。'),
(29,'jvm调优步骤?',4,'JVM面试题','分析系统系统运行情况：分析GC日志及dump文件，判断是否需要优化，确定瓶颈问题点；\n确定JVM调优量化目标；\n确定JVM调优参数（根据历史JVM参数来调整）；\n依次确定调优内存、延迟、吞吐量等指标；\n对比观察调优前后的差异；\n不断的分析和调整，直到找到合适的JVM参数配置；\n找到最合适的参数，将这些参数应用到所有服务器，并进行后续跟踪。'),
(30,'垃圾回收器是怎样寻找 GC Roots 的？',4,'JVM面试题','分两种情况：\n1.系统还在运行：\n通过公司的监控平台查看jvm的运行情况，比如gc频率，线程数等等\n--每次gc回收的垃圾多不，如果回收的多，可以尝试把新生代的内存调大\n--系统此时的访问量大不大，系统压力如何\n--每次fullgc只回收一点内存，看下dump文件，看下内存里都是有哪些对象，看下代码是不是有问题，比如说system.gc()\n具体场景具体分析\n\n2.系统挂了：\n一般都会设置当OOM生成dump文件，然后找运维要dump⽂件(生产机器开发一般没权限)；然后把dump文件放到mat工具中进行分析，mat工具挺好用的，会直接提示哪里的代码可能会有问题，先按提示排查问题\n\n总之，调优不是⼀蹴⽽就的，需要分析、推理、实践、总结、再分析，最终定位到具体的问题'),
(31,'JVM为什么能跨平台？',4,'JVM面试题','两大原因：\n\n（1）Java 文件经过编译后生成和平台无关的 class 文件。\n\n（2）而Java虚拟机（JVM）是不跨平台的，java工具会把统一的class文件，加载到对应的JVM，又因为该JVM是和这个系统是对应的，所以就可以运行。'),
(32,'队列和栈是什么？有什么区别？',4,'JVM面试题','队列和栈都是被用来预存储数据的。\n\n队列允许先进先出检索元素，但也有例外的情况，Deque 接口允许从两端检索元素。\n\n栈和队列很相似，但它运行对元素进行后进先出进行检索。'),
(33,'为什么要使用ES',5,'elasticsearch面试题','数据量增大是模糊查询会放弃索引，效率低下。而es做全文索引提高查询速度。'),
(34,'ES怎么做数据同步？',5,'elasticsearch面试题','1.同步双写\n数据写到mysql时，同时将数据写到ES，实现数据的双写。\n优点：业务逻辑简单。\n缺点：硬编码，业务强耦合，性能较差,代码的侵入性太强\n\n2.异步双写（MQ方式）(程序到MQ，MQ再到MYSQL和ES)\n改为写MQ，不直接写ES\n优点：性能高(由于MQ的性能基本比mysql高出一个数量级)；不存在丢数据问题\n缺点：硬编码，业务强耦合,代码的侵入性太强,延时\n\n3.异步双写（Worker方式）(定时任务)\n让该程序按一定的时间周期扫描指定的表，把该时间段内发生变化的数据提取出来；逐条写入到ES中。\n优点：不改变原来代码，没有侵入性、没有硬编码；没有业务强耦合；\n缺点：时效性较差\n\n4.Binlog 同步方式\n利用mysql的binlog来进行同步\n优点：没有代码侵入、没有硬编码；原有系统不需要任何变化，没有感知；性能高；业务解耦，不需要关注原来系统的业务逻辑。\n缺点：构建Binlog系统复杂；也像方案二，存在MQ延时的风险'),
(35,'ES有哪些查询方式？',5,'elasticsearch面试题','全文检索、匹配查询、精准查询、过滤查询、组合查询、范围查询、模糊查询、排序查询、高亮查询、分页查询、聚合查询'),
(36,'ES集群脑裂问题',5,'elasticsearch面试题','**成因**\n1.网络原因：集群间的网络延迟导致一些节点访问不到master,认为master挂掉了从而选举出新的master，并对master上的分片和副本标红，分配新的主分片。\n2.节点负载：主节点的角色即为master又为data,访问量较大时可能会导致ES停止响应造成大面积延迟，此时其他节点得不到主节点的响应认为主节点挂掉了，会重新选取主节点。\n3.内存回收：data节点上的es进程占用的内存较大，引发JVM的大规模内存回收，造成ES进程失去响应。\n\n**解决方案**\n1。减少误判：discover.zen.ping_timeout节点状态的响应时间默认为3s,可适当调大。\n2.选举触发：discover.zen.minimum_master_nodes:1该参数是用于控制选举行为发生的最小集群主节点数量。当备选主节点的个数大于等于该参数值，且备选主节点中有该参数个节点认为主节点挂了，进行选举。官方建议(n/2)+1,n为主节点个数。\n3.角色分离：即master节点与data节点分离，限制角色\n主节点配置：node.master:true node.data:false;\n从节点配置：\nnode.master:false \nnode.data:true;'),
(37,'如何监控ES集群状态？',5,'elasticsearch面试题','elasticsearch-head 插件\n通过 Kibana 监控 Elasticsearch。你可以实时查看你的集群健康状态和性能，也可以分析过去的集群、\n索引和节点指标'),
(38,'ES中的倒排索引是什么？',5,'elasticsearch面试题','倒排索引是搜索引擎的核心。搜索引擎的主要目标是在查找发生搜索条件的文档时提供快速搜索。ES中的倒排索引其实就是 lucene 的倒排索引，区别于传统的正向索引，倒排索引会再存储数据时将关键词和数据进行关联，保存到倒排表中，然后查询时，将查询内容进行分词后在倒排表中进行查询，最后匹配数据即可。'),
(39,'Elasticsearch 中的集群、节点、索引、文档、类型是什么？',5,'elasticsearch面试题','集群是一个或多个节点（服务器）的集合，它们共同保存您的整个数据，并提供跨所有节点的联合索\n引和搜索功能。群集由唯一名称标识，默认情况下为“elasticsearch”。此名称很重要，因为如果节点设\n置为按名称加入群集，则该节点只能是群集的一部分。节点是属于集群一部分的单个服务器。它存储数据并参与群集索引和搜索功能。索引就像关系数据库中的“数据库”。它有一个定义多种类型的映射。索引是逻辑名称空间，映射到一\n个或多个主分片，并且可以有零个或多个副本分片。 MySQL =>数据库 Elasticsearch =>索引文档类似于关系数据库中的一行。不同之处在于索引中的每个文档可以具有不同的结构（字段），但\n是对于通用字段应该具有相同的数据类型。 MySQL => Databases => Tables => Columns / Rows \nElasticsearch => Indices => Types =>具有属性的文档类型是索引的逻辑类别/分区，其语义完全取决于用户。'),
(40,'在并发情况下，ES如何保证读写一致？',5,'elasticsearch面试题',' 可以通过版本号使用乐观并发控制，以确保新版本不会被旧版本覆盖，由应用层来处理具体的冲突；\n 另外对于写操作，一致性级别支持 quorum/one/all，默认为 quorum，即只有当大多数分片可用时才允许写操作。但即使大多数可用，也可能存在因为网络等原因导致写入副本失败，这样该副本被认为故\n障，分片将会在一个不同的节点上重建。\n 对于读操作，可以设置 replication 为 sync(默认)，这使得操作在主分片和副本分片都完成后才会返回；\n如果设置 replication 为 async 时，也可以通过设置搜索请求参数_preference 为 primary 来查询主分片，\n确保文档是最新版本。'),
(41,'String、Stringuffer、StringBuilder三者之间的区别？',6,'java面试题','String类中使用Final关键字修饰，对象是不可变的，线程安全的\nStringBuffer对方法加了同步锁或者对调用的方法加了同步锁，所以是线程安全的\nStringBuilder并没有对方法进行加同步锁，所以是非线程安全的'),
(42,'接口和抽象类有什么区别？',6,'java面试题','1.接口是抽象类的变体，「接口中所有的方法都是抽象的」。而抽象类是声明方法的存在而不去实现它的类。\n2.接口可以多继承，抽象类只能单继承。\n3.接口中方法不能实现，默认是 「public abstract」，而抽象类可以实现部分方法。\n4.接口中基本数据类型为 「public static final」 并且需要给出初始值，而抽类象不用。'),
(43,'重载和重写什么区别？',6,'java面试题','重写：\n发生在父子类中\n1.参数列表必须「完全与被重写的方法」相同，否则不能称其为重写而是重载.\n2.「返回的类型必须一致与被重写的方法的返回类型相同」，否则不能称其为重写而是重载。\n3.访问「修饰符的限制一定要大于被重写方法的访问修饰符」\n4.重写方法一定「不能抛出新的检查异常或者比被重写方法申明更加宽泛的检查型异常」。重载：\n发生在同一类中\n1.必须具有「不同的参数列表」；\n2.可以有不同的返回类型，只要参数列表不同就可以了；\n3.可以有「不同的访问修饰符」；\n4.可以抛出「不同的异常」；'),
(44,'BIO、NIO、AIO 有什么区别？',6,'java面试题','BIO：Block IO 同步阻塞式 IO，就是我们平常使用的传统 IO，它的特点是模式简单使用方便，并发处理能力低。\n\nNIO：New IO 同步非阻塞 IO，是传统 IO 的升级，客户端和服务器端通过 Channel（通道）通讯，实现了多路复用。\n\nAIO：Asynchronous IO 是 NIO 的升级，也叫 NIO2，实现了异步非堵塞 IO ，异步 IO 的操作基于事件和回调机制。'),
(45,'HashMap 和 Hashtable 有什么区别？',6,'java面试题','HashMap是非线程安全的，HashTable是线程安全的\nHashMap的键和值都允许有null值存在，HashTable不允许\nHashMap效率比HashTable高\nHashtable是同步的，HashMap不同步'),
(46,'list、set和Map的区别？',6,'java面试题','list：有序，可重复\nset：无序，不可重复\nMap：无序，它的键不允许重复，它的值允许重复'),
(47,'那么 hashMap 线程不安全怎么解决？',6,'java面试题','一.给 hashMap 「直接加锁」,来保证线程安全\n二.使用 「hashTable」,比方法一效率高,其实就是在其方法上加了 synchronized 锁\n三.使用 「concurrentHashMap」 , 不管是其 1.7 还是 1.8 版本,本质都是「减小了锁的粒度,减少线程竞争」来保证高效.'),
(48,'ArrayList底层是怎么进行扩容的？',6,'java面试题','如果创建一个list没有指定元素大小，会在add元素的时候会通过ensureCapacityInternal()方法确认大小，一般是指定为10的大小。然后再通过ensureExplicitCapacity()方法确认list的显式大小。如果需要的最小容量大于list集合的大小时，会调用grow()再进行扩容，新的数组大小是原来数组的1.5倍。如果扩容后的新数组大小小于最小容量大小，则将数组的大小设定为最小容量大小。如果扩容后的新数组容量大小大于数组最大容量大小Integer.max.array.value，则调用hugeCapacity方法()，判断所需最小容量大小是否大于Integer.max.array.value。大于返回最大容量大小Integer.max.value。否则将容量大小设置为Integer.max.array.value.\n');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `checkpass` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customer` */

insert  into `customer`(`id`,`username`,`password`,`checkpass`) values 
(1,'laowang','123','123'),
(2,'kobe','424','424'),
(3,'james','623','623'),
(34,'33','33','33'),
(48,'aa','aa','aa');

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `sno1` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cno` int(11) NOT NULL,
  `grade` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sc` */

insert  into `sc`(`sno1`,`cno`,`grade`) values 
('1',1,22),
('1',2,66),
('1',3,77),
('1',4,88),
('1',6,50),
('9',1,77);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'admin','admin666');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
