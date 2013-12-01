<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--main-->
<div class="position">当前位置：<a href="./">首页</a> > <a href="/html/jinji/">晋级政策</a> &gt; <a href="/html/jinji/xiezuo/">写作技巧</a> &gt; </div>
<!--导航以上-->
<div class="index_main">
<div class="index_left">
<div class="remen">
<h3 class="h3_b clear"><strong>热门期刊</strong></h3>
<div class="item "><a href="zazhi/?id=199" target="_blank" title="《白求恩军医学院学报》"><img src="uploadfile/2013/0808/20130808121343640.jpg" alt="《白求恩军医学院学报》" /><span>《白求恩军医学院学报》</span></a></div>
<div class="item no"><a href="zazhi/?id=198" target="_blank" title="《泰山医学院学报》"><img src="uploadfile/2013/0815/20130815123021876.jpg" alt="《泰山医学院学报》" /><span>《泰山医学院学报》</span></a></div>
<div class="item "><a href="zazhi/?id=127" target="_blank" title="《临床肺科》"><img src="/uploadfile/2013/0701/2ff1e124034d5787baf2e89e64e2dd18.jpg" alt="《临床肺科》" /><span>《临床肺科》</span></a></div>
<div class="item no"><a href="zazhi/?id=99" target="_blank" title="《中国实用神经疾病》"><img src="/uploadfile/2013/0701/eda7454b7bfd2b89596e010d204cd6db.jpg" alt="《中国实用神经疾病》" /><span>《中国实用神经疾病》</span></a></div>
</div>
<!--//remen-->
<div class="new">
<h3 class="h3_b clear"><strong>栏目推荐</strong></h3>
<ul class="ul_c">
<li><a href="html/jinji/xiezuo/319.html" target="_blank" title="医学论文照片图的处理">医学论文照片图的处理</a></li>
<li><a href="html/jinji/xiezuo/314.html" target="_blank" title="检验医学论文中文摘要常见写作缺陷">检验医学论文中文摘要常见写作缺陷</a></li>
<li><a href="html/jinji/xiezuo/311.html" target="_blank" title="医学论文结果部分的写作技巧">医学论文结果部分的写作技巧</a></li>
<li><a href="html/jinji/xiezuo/307.html" target="_blank" title="肿瘤学论文写作的基本要求与格式">肿瘤学论文写作的基本要求与格式</a></li>
<li><a href="html/jinji/xiezuo/305.html" target="_blank" title="中医药论文写作存在的问题">中医药论文写作存在的问题</a></li>
<li class="h10"></li><li><a href="html/jinji/xiezuo/298.html" target="_blank" title="撰写医学论文常用网址大全">撰写医学论文常用网址大全</a></li>
<li><a href="html/jinji/xiezuo/293.html" target="_blank" title="医学论文评论类的特点">医学论文评论类的特点</a></li>
<li><a href="html/jinji/xiezuo/290.html" target="_blank" title="医学论文正文部分的写作形式">医学论文正文部分的写作形式</a></li>
<li><a href="html/jinji/xiezuo/286.html" target="_blank" title="《中华临床医师杂志(电子版)》创刊">《中华临床医师杂志(电子版)》创刊</a></li>
<li><a href="html/jinji/xiezuo/280.html" target="_blank" title="学术类文献综述的写作">学术类文献综述的写作</a></li>
<li class="h10"></li></ul>
</div>
<!--//new-->
<div class="lianxi"><p><a href="html/tougao/"><img width="250" height="100" src="/uploads/20130702153708zk7qsa.gif" alt="" /></a></p>
<p>&nbsp;</p>
<p>免费咨询热线：4006575136</p>
<p>&nbsp;</p>
<p>企业咨询QQ：800070250</p>
<p>&nbsp;</p>
<p>投稿邮箱：<a href="mailto:xsb@yihuhao.com">xsb@yihuhao.com</a></p>
</div>
</div>
<!--//index_left-->
<div class="index_right">
<h3 class="h3_b"><strong>写作技巧</strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=5ab4b05e97fd14c3ed386604ee1a9399&action=lists&catid=%24catid&num=25&order=id+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 25;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
<ul class="box1 newslit">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li><span class="left"><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></span><span class="right"><?php echo date('Y-m-d H:i:s',$r[inputtime]);?></span></li>
<?php if($n%5==0) { ?><li class="line"></li><?php } ?>
<?php $n++;}unset($n); ?>

<li class="fenye"><?php echo $pages;?></li>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<!--//newslit-->
</div>
<!--//index_right-->
<div style="clear:both"></div>
</div>
<!--//index_main-->
<div style="clear:both"></div>

<div class="footer">
<p class="foot_nav">
<a title="中华医护好网" href="./">网站首页</a> | 
<a href="/html/jinji/">晋级政策</a> | 
<a href="/html/qikan/">医学期刊</a> | 
<a href="/html/wenxian/">专科文献</a> | 
<a href="/html/jiaoyu/">医学教育</a> | 
<a href="/html/tougao/">在线投稿</a> | 
<a href="/html/huiyi/">学术会议</a> | 
<a href="/html/xinzhi/">医学新知</a> | 
<a href="/html/xiazai/">医护下载</a> | 
<a href="">问答互动</a> | 
<a href="/html/about/contactus/">联系我们</a> | 
<a href="/sitemap.html">网站地图</a>
</p>
<p class="info">版权所有 &copy;中华医护好网(隶属于北京远宏思创科技有限公司) Copyright 2010-2013 <br />
本程序未经授权严禁复制或建立镜像，希望本站的内容为您提供一定的帮助!<br />
投稿咨询：4006575136&nbsp;&nbsp;企业QQ：800070250&nbsp;&nbsp;&nbsp;本网网址：<a href="./" target="_blank" title="中华医护好网">中华医护好网</a>(www.xueshuhao.com)&nbsp;&nbsp;</p>
<p align="left">本网站部分文章从网络收集，如侵犯了您的权益，请速与我单位电话或电子邮件联系，我单位接到通知后三个工作日内删除上传信息。</p></div>
<!--//footer-->
<div class="clear"></div>
</div>
<!--//main-->
<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=6&amp;pos=left&amp;uid=6363840" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
</script>
<!-- Baidu Button END -->

<!--web qq BEGIN-->
<script type="text/javascript" src="uploads/js/webqq.js"></script>
<!--web qq  END--></body>
</html>