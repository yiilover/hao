<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div class="position">当前位置：<a href="./">首页</a> > <?php echo catpos($catid);?>  </div>
<!--导航以上-->
<div class="index_main">
<?php include template("content","left_list"); ?>

<div class="index_right">
<h3 class="h3_a"><strong class="left"><a href="/html/jinji/xiezuo/" title="写作技巧">写作技巧</a></strong></h3>
<div class="article">
<h1 class="tit"><?php echo $title;?></h1>
<h6 class="info">来源:互联网　作者:<a href="javascript:;"  class="username">admin</a>　发布时间:<?php echo $inputtime;?>　浏览次数：<span id="hits">0</span></h6>
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