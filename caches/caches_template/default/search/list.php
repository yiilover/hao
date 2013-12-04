<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content', 'header'); ?>

<div class="position">当前位置：<a href="./">首页</a> &gt; 搜索有关<font color="red">【<?php echo $search_q;?>】</font>的结果，共计<b red\""="" style="color=\"><?php echo $totalnums;?></b>条</div>
	<div class="index_main">
<ul class="clearfix searchlist">
<div class="fenye"><?php echo $pages;?></div>
<?php $n=1; if(is_array($data)) foreach($data AS $i => $r) { ?>
<li>
<h3><span class="left"><a target="_blank" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></span><span class="right">发布日期：<?php echo format::date($r[inputtime], 1);?></span></h3>
<p class="desc"><?php echo $r['description'];?>......<a title="" target="_blank" href="<?php echo $r['url'];?>">[详细&gt;&gt;]</a></p>
<div class="url">&nbsp;&nbsp;&nbsp;&nbsp;访问链接：<a target="_blank" href="<?php echo $r['url'];?>"><?php echo $r['url'];?></a></div>
</li>
<?php $n++;}unset($n); ?>
<div class="fenye"><?php echo $pages;?></div>
</ul>
<!--//newslit-->
<div style="clear:both"></div>
</div>
<?php include template('content', 'footer'); ?>
