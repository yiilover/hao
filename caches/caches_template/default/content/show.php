<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div class="position">当前位置：<a href="./">首页</a> > <?php echo catpos($catid);?>  </div>
<!--导航以上-->
<div class="index_main">
<div class="index_left">
<div class="remen">
<h3 class="h3_b clear"><strong>热门期刊</strong></h3>
<div class="item "><a href="zazhi/?id=151" target="_blank" title="《中国高等医学教育》"><img src="uploadfile/2013/0705/20130705065008254.jpg" alt="《中国高等医学教育》" /><span>《中国高等医学教育》</span></a></div>
<div class="item no"><a href="zazhi/?id=136" target="_blank" title="《中药材》"><img src="/uploadfile/2013/0701/cb2f80ecf61dcc6b8b624124a0c9e361.jpg" alt="《中药材》" /><span>《中药材》</span></a></div>
<div class="item "><a href="zazhi/?id=131" target="_blank" title="《中国妇幼健康研究》"><img src="/uploadfile/2013/0701/945bba6ea857581b4420b8a6357fac3c.jpg" alt="《中国妇幼健康研究》" /><span>《中国妇幼健康研究》</span></a></div>
<div class="item no"><a href="zazhi/?id=126" target="_blank" title="《临床荟萃》"><img src="/uploadfile/2013/0701/033504fa158f074645a052baf4c346fc.jpg" alt="《临床荟萃》" /><span>《临床荟萃》</span></a></div>
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
<div class="lianxi"><p><a href="html/tougao/"><img alt="" width="250" height="100" src="/uploads/20130702153708zk7qsa.gif" /></a></p>
<p>&nbsp;</p>
<p>免费咨询热线：4006575136</p>
<p>&nbsp;</p>
<p>企业咨询QQ：800070250</p>
<p>&nbsp;</p>
<p>投稿邮箱：<a href="mailto:xsb@yihuhao.com">xsb@yihuhao.com</a></p>
<p>&nbsp;</p>
<p><!-- WPA Button Begin --><script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDA3MDI1MF81MzE4MF84MDAwNzAyNTBf"></script><!-- WPA Button End -->&nbsp;</p>
<p><!-- WPA Button Begin --><script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzgwMDA3MDI1MF81MzMwMl84MDAwNzAyNTBf"></script><!-- WPA Button End --></p></div>
</div>
<!--//index_left-->

<div class="index_right">
<h3 class="h3_a"><strong class="left"><a href="/html/jinji/xiezuo/" title="写作技巧">写作技巧</a></strong></h3>
<div class="article">
<h1 class="tit"><?php echo $title;?></h1>
<h6 class="info">来源:<?php echo $copyfrom;?>　作者:<a href="?userid=1" target="_blank" class="username">qxz10010</a>　发布时间:2013-07-03 00:23　浏览次数：<span id="hits">0</span></h6>
<div class="con"><?php echo $content;?></div>

		
<ul class="updown clearfix">
<li>上一篇：<a href="<?php echo $previous_page['url'];?>"><?php echo $previous_page['title'];?></a></Li>
<li>下一篇：<a href="<?php echo $next_page['url'];?>"><?php echo $next_page['title'];?></a></li>
</ul>
</div><!--//article-->
</div>
<!--//index_right-->
<div style="clear:both"></div>
</div>
<!--//index_main-->
<div style="clear:both"></div>


<script language="JavaScript" src="<?php echo APP_PATH;?>api.php?op=count&id=<?php echo $id;?>&modelid=<?php echo $modelid;?>"></script>
<?php include template("content","footer"); ?>